#!/bin/bash

# Ensure the script is run as root
if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root"
    exit 1
fi

# Detect Ubuntu version and architecture
UBUNTU_VERSION=$(lsb_release -rs)
ARCHITECTURE=$(dpkg --print-architecture)
LOG_FILE="/var/log/tvheadend_install.log"

# Enable logging
exec > >(tee -a "$LOG_FILE") 2>&1

# Function to check if tvheadend is already installed
check_existing_tvheadend() {
    if dpkg -l | grep -q tvheadend; then
        echo "Existing tvheadend installation detected."
        dialog --title "Existing Installation" --yesno "A previous version of tvheadend is installed. Do you want to remove all configurations and install a fresh version?" 10 60
        if [ $? -eq 0 ]; then
            echo "Removing existing tvheadend and configurations..."
            systemctl stop tvheadend
            apt purge -y tvheadend
            rm -rf /etc/tvheadend /var/lib/tvheadend /etc/default/tvheadend
        else
            echo "Proceeding with an upgrade installation."
            return 0
        fi
    fi
    return 1
}

# Function to install necessary dependencies
install_dependencies() {
    echo "Installing necessary dependencies..."
    apt install -y software-properties-common gnupg2 wget curl \
        libavahi-client3 libavahi-common3 libdvbcsa1 libpcre3 liburiparser1 bzip2 \
        build-essential git libpcre2-dev pkg-config libssl-dev \
        libavahi-client-dev zlib1g-dev libavcodec-dev libavutil-dev \
        libavformat-dev libswscale-dev libswresample-dev gettext cmake \
        libiconv-hook-dev liburiparser-dev debhelper libcurl4-gnutls-dev \
        libdvbcsa-dev python-is-python3
}

# Clean up potential duplicate repository entries
echo "Cleaning up duplicate repository entries..."
sed -i '/deb-multimedia/d' /etc/apt/sources.list
rm -f /etc/apt/sources.list.d/updates-security.list

# Install dependencies
install_dependencies

# Remove old tvheadend if selected by user
check_existing_tvheadend
if [ $? -eq 0 ]; then
    echo "Proceeding with fresh installation of tvheadend..."
else
    echo "Skipping reinstallation of tvheadend."
fi

# Determine the correct tvheadend package URL based on Ubuntu version and architecture
BASE_URL="https://dl.cloudsmith.io/public/tvheadend/tvheadend/deb/ubuntu/pool/"
PACKAGE_NAME=""

case "$UBUNTU_VERSION" in
    "24.04") TVH_VERSION="noble" ;;
    "22.04") TVH_VERSION="jammy" ;;
    "20.04") TVH_VERSION="focal" ;;
    "18.04") TVH_VERSION="bionic" ;;
    "16.04") TVH_VERSION="xenial" ;;
    *)
        echo "Unsupported Ubuntu version: $UBUNTU_VERSION"
        exit 1
    ;;
esac

PACKAGE_NAME="tvheadend_4.3-2375~g653bd0400~${TVH_VERSION}_${ARCHITECTURE}.deb"
PACKAGE_URL="${BASE_URL}${TVH_VERSION}/main/t/tv/tvheadend_4.3-2375~g653bd0400~${TVH_VERSION}/${PACKAGE_NAME}"

# Download and install tvheadend
echo "Downloading tvheadend package for ${ARCHITECTURE} on Ubuntu ${UBUNTU_VERSION}..."
echo "Fetching from: $PACKAGE_URL"
wget -O /tmp/tvheadend.deb "$PACKAGE_URL"

# Check if the file was successfully downloaded
if [[ ! -s /tmp/tvheadend.deb ]]; then
    echo "Failed to download tvheadend package! Check the URL: $PACKAGE_URL"
    exit 1
fi

echo "Installing tvheadend..."
dpkg -i /tmp/tvheadend.deb || apt --fix-broken install -y

# Verify if tvheadend installed successfully
if ! dpkg -l | grep -q tvheadend; then
    echo "Tvheadend installation failed!"
    exit 1
fi

# Install dialog package if not installed
echo "Ensuring 'dialog' package is installed..."
apt install -y dialog

# Configure tvheadend vTuners
TVHEADEND_DEFAULTS="/etc/default/tvheadend"
NUM_TUNERS=$(dialog --title "SAT>IP vTuners Configuration" --inputbox "Please specify the number of SAT>IP vTuners to configure (1-8)" 8 50 3>&1 1>&2 2>&3 3>&-)

if ! [[ "$NUM_TUNERS" =~ ^[1-8]$ ]]; then
    dialog --title "Error" --msgbox "Please enter a valid number between 1 and 8." 6 50
    exit 1
fi

TVH_ARGS=""

for i in $(seq 1 "$NUM_TUNERS"); do
    while true; do
        IP_ADDRESS=$(dialog --title "SAT>IP vTuner IP Address" --inputbox "Enter the IP address for SAT>IP vTuner $i as specified in your order. (Format: x.x.x.x, where x is 0-255)" 8 70 3>&1 1>&2 2>&3 3>&-)

        if [[ $IP_ADDRESS =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
            IFS='.' read -ra ADDR <<< "$IP_ADDRESS"
            VALID_IP=true
            for octet in "${ADDR[@]}"; do
                if [[ "$octet" -gt 255 ]]; then
                    VALID_IP=false
                    break
                fi
            done
            if $VALID_IP; then
                break
            else
                dialog --title "Invalid IP Address" --msgbox "The IP address entered is invalid. Please enter a valid IPv4 address." 8 50
            fi
        else
            dialog --title "Invalid IP Address" --msgbox "The format of the IP address entered is incorrect. Please ensure it is a valid IPv4 address." 8 50
        fi
    done
    TVH_ARGS="${TVH_ARGS} --satip_xml http://${IP_ADDRESS}:8875/satip.xml"
done

# Ensure OPTIONS is updated with SAT>IP configuration
sed -i "s|^OPTIONS=\"\(.*\)\"$|OPTIONS=\"\1 ${TVH_ARGS}\"|" "$TVHEADEND_DEFAULTS"

dialog --title "Success" --msgbox "tvheadend vTuner configuration updated successfully." 6 50

# Restart tvheadend
clear && systemctl restart tvheadend
exit 0
