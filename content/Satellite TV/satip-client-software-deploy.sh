#!/bin/bash

# Update and install necessary dependencies
apt-get update && apt-get install -y curl wget dialog net-tools dvb-tools dvb-apps 

# Create a menu with the new versions included
CHOICE=$(dialog --title "DVB-VPS SAT>IP Client Software" --menu "Please choose SAT>IP client software to deploy on your DVB-VPS:" 15 70 3 \
1 "Cesbo Astra SAT>IP Client (Latest release. Recommended!)" \
2 "Tvheadend SAT>IP Client (Stable release 4.3 .)" 3>&1 1>&2 2>&3 3>&-)

clear

# Process user's choice
case $CHOICE in
    1)
        echo "Deploying - Cesbo Astra SAT>IP Client Software (Latest release)..."
        curl -s https://satline.tv/tools/astra-latest-satip-client-deploy.sh | bash
        ;;
    2)
        echo "Deploying - Tvheadend SAT>IP Client Software (Stable release 4.3)..."
        curl -s https://satline.tv/tools/latest-tvheadend-4.3.x-satip-client-deploy.sh | bash
        ;;
    *)
        echo "No valid choice was made."
        ;;
esac
