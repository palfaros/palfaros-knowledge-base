---
title: OSCam
date: 2025-08-20
draft: false
---
## ¿Qué es OSCam y para qué sirve?

**OSCam (Open Source Conditional Access Module)** es un software de código abierto que funciona como un **emulador de módulo de acceso condicional (CAM)**. Su objetivo principal es gestionar y descifrar contenido de televisión protegido mediante sistemas de cifrado utilizados en la televisión digital (DVB, IPTV, etc.).

En otras palabras, OSCam actúa como un intermediario entre:

- **Los servicios de TV codificados** (como canales que requieren una tarjeta de suscripción o claves de descifrado).
- **Los clientes que reproducen la señal**, como **TVHeadend**, Kodi o cualquier otro receptor compatible.
### Usos principales

1. **Descifrado de canales DVB/IPTV**: OSCam permite acceder a canales cifrados usando una tarjeta física o un servidor remoto de claves.
2. **Integración con servidores de TV**: Puede trabajar junto con **TVHeadend**, recibiendo solicitudes de descifrado y entregando las claves necesarias para ver los canales en streaming.
3. **Gestión de múltiples lectores o servidores de claves**: Soporta varias tarjetas físicas (lectores) y conexiones a servidores remotos simultáneamente, distribuyendo los recursos según la demanda.
4. **Registro y monitoreo**: OSCam genera logs detallados de ECM/EMM (mensajes de control de acceso), lo que permite analizar cómo se procesan los canales y optimizar la configuración.

## Instalación

### Instalación dependencias

En primer lugar, actualizamos la información sobre los paquetes disponibles en los repositorios configurados en el sistema.

```shell
sudo apt-get update
```

En segundo lugar, instalamos los siguientes paquetes y utilidades necesarias:
- cvs
- subversion
- autoconf
- gettext
- make
- cmake
- tar
- gcc
- g++
- build-essential
- dialog
- libssl-dev

Para ello, ejecutamos el siguiente comando:

```shell
sudo apt-get install cvs subversion autoconf gettext make cmake tar gcc g++ build-essential dialog libssl-dev
```

### Entorno compilación

La compilación de OSCam se realizará en el directorio `/oscam`.

```shell
mkdir oscam
cd oscam
```

Descargamos el código fuente del repositorio oficial:

```shell
git clone https://git.streamboard.tv/common/oscam.git oscam
```

Al finalizar la descarga entramos en el directorio de trabajo `/oscam/oscam`:

```shell
cd /oscam/oscam
```

### Compilación

Antes de realizar la compilación se pueden configurar ciertos parámetros para OSCam. Para ello, ejecutamos el comando:

```shell
make config
```

Una vez seleccionados los parámetros de configuración, iniciamos la compilación ejecutando el comando:

```shell
make
```

Al finalizar la compilación indicará el directorio en el que se han creado los binarios:

```shell
CONF    build/x86_64-linux-gnu/config.c
LINK    Distribution/oscam-2.25.07-11886@cd2ce925-x86_64-linux-gnu.debug
STRIP   Distribution/oscam-2.25.07-11886@cd2ce925-x86_64-linux-gnu
```

Comprobamos que el OSCam compilado se inicia correctamente mediante los siguientes comandos:

```shell
cd Distribution
./oscam-2.25.07-11886@cd2ce925-x86_64-linux-gnu -help
```

Si se ha compilado correctamente aparecerá la ayuda de OSCam:

```shell
root@satip-677:~/oscam/oscam/Distribution# ./oscam-2.25.07-11886@cd2ce925-x86_64-linux-gnu -help
  ___  ____   ___
 / _ \/ ___| / __|__ _ _ __ ___
| | | \___ \| |  / _` | '_ ` _ \
| |_| |___) | |_| (_| | | | | | |
 \___/|____/ \___\__,_|_| |_| |_|

OSCam Cardserver v2.25.07-11886@cd2ce925 (x86_64-linux-gnu)
Copyright (C) 2009-2025 OSCam developers.
This program is distributed under GPLv3.
OSCam is based on Streamboard mp-cardserver v0.9d written by dukat
Visit https://board.streamboard.tv for more details.

 ConfigDir  : /usr/local/etc

 Usage: oscam [parameters]

 Directories:
 -c, --config-dir <dir>  | Read configuration files from <dir>.
                         . Default: /usr/local/etc
 -t, --temp-dir <dir>    | Set temporary directory to <dir>.
                         . Default: /tmp/.oscam

 Startup:
 -b, --daemon            | Start in the background as daemon.
 -B, --pidfile <pidfile> | Create pidfile when starting.
 -r, --restart <level>   | Set restart level:
                         .   0 - Restart disabled (exit on restart request).
                         .   1 - WebIf restart is active (default).
                         .   2 - Like 1, but also restart on segfaults.
 -w, --wait <secs>       | Set how much seconds to wait at startup for the
                         . system clock to be set correctly. Default: 60

 Logging:
 -I, --syslog-ident <ident> | Set syslog ident. Default: oscam
 -S, --show-sensitive    | Do not filter sensitive info (card serials, boxids)
                         . from the logs.
 -d, --debug <level>     | Set debug level mask used for logging:
                         .     0 - No extra debugging (default).
                         .     1 - Detailed error messages.
                         .     2 - ATR parsing info, ECM, EMM and CW dumps.
                         .     4 - Traffic from/to the reader.
                         .     8 - Traffic from/to the clients.
                         .    16 - Traffic to the reader-device on IFD layer.
                         .    32 - Traffic to the reader-device on I/O layer.
                         .    64 - EMM logging.
                         .   128 - DVBAPI logging.
                         .   256 - Loadbalancer logging.
                         .   512 - CACHEEX logging.
                         .  1024 - Client ECM logging.
                         .  2048 - CSP logging.
                         .  4096 - CWC logging.
                         . 65535 - Debug all.

 Settings:
 -p, --pending-ecm <num> | Set the maximum number of pending ECM packets.
                         . Default: 32 Max: 4096

 Debug parameters:
 -a, --crash-dump        | Write oscam.crash file on segfault. This option
                         . needs GDB to be installed and OSCam executable to
                         . contain the debug information (run oscam-XXXX.debug)
 -s, --capture-segfaults | Capture segmentation faults.
 -g, --gcollect <mode>   | Garbage collector debug mode:
                         .   1 - Immediate free.
                         .   2 - Check for double frees.

 Information:
 -h, --help              | Show command line help text.
 -V, --build-info        | Show OSCam binary configuration and version.

```

Creamos los directorios y ficheros en los que OSCam volcará los logs generados durante la ejecución.

```shell
mkdir /var/log/oscam
touch /var/log/oscam/oscam.log
chmod 755 /var/log/oscam/oscam.log
touch /var/log/oscam/oscamuser.log
chmod 755 /var/log/oscam/oscamuser.log
mkdir /var/log/oscam/cw
chmod 755 /var/log/oscam/cw
```
### Creación *daemon* de arranque

El siguiente paso es crear un *daemon* de arranque para que OSCam se inicie tras un reinicio del sistema:

Para ello se crea el fichero `/etc/systemd/system/oscam.service`:

```shell
sudo nano /etc/systemd/system/oscam.service
```

Introducimos los parámetros de arranque:

```
[Unit]
Description=OSCam
After=network.target
Requires=network.target

[Service]
Type=forking
PIDFile=/var/run/oscam.pid
ExecStart=/root/oscam/oscam/Distribution/oscam-2.25.07-11886@cd2ce925-x86_64-linux-gnu -b -B /var/run/oscam.pid
ExecStop=/usr/bin/rm /var/run/oscam.pid
TimeoutStopSec=1
Restart=always
RestartSec=5
StartLimitInterval=0

[Install]
WantedBy=multi-user.target
```

Comprobamos que los parámetros de arranque son correctos. Para ello, ejecutamos los siguientes comandos:

```shell
sudo systemctl daemon-reload
sudo systemctl start oscam
sudo systemctl status oscam
```

Para finalizar, activamos el arranque automático:

```shell
sudo systemctl stop oscam
sudo systemctl enable oscam
```

### Ficheros de configuración

La ruta por defecto de los ficheros de configuración es `/usr/local/etc`.

#### Fichero `/usr/local/etc/oscam.conf`

Copiamos el fichero de ejemplo `/root/oscam/oscam/Distribution/doc/example/oscam.conf` a la carpeta `/usr/local/etc`.

Sustituimos completamente el apartado `[webif]` por las siguientes líneas:

```shell
[webif]
httpport      = 8888
httpuser      = admin
httppwd       = tetra
httpallowed   = 0.0.0.0-255.255.255.255
```

Sustituimos completamente el apartado `[dvbapi]` por las siguientes líneas:

```shell
[dvbapi]
enabled                       = 1
au                            = 1
pmt_mode                      = 4
request_mode                  = 1
listen_port                   = 9001
delayer                       = 60
user                          = dvbapi
read_sdt                      = 2
write_sdt_prov                = 1
extended_cw_api               = 1
boxtype                       = pc
```

#### Fichero `/usr/local/etc/oscam.server`

Añadimos la configuración del lector remoto al fichero. Se debe rellenar con los datos proporcionados por el proveedor de claves. A continuación se muestra un ejemplo:

```shell
[reader]
label                         = movistar
protocol                      = cccam
device                        = 10.8.0.1,42680
user                          = 4x0ari
password                      = 86rsfw
inactivitytimeout             = 30
group                         = 1
disablecrccws                 = 1
cccversion                    = 2.1.2
ccckeepalive                  = 1
reconnecttimeout              = 5
cccreshare                    = -1
maxconnections                = 1
```

**Importante:** Los parámetros `cccreshare` y `maxconnections` son esenciales para evitar baneos por *resharing*.

#### Fichero `/usr/local/etc/oscam.user`

Añadimos las siguientes líneas al fichero:

```shell
[account]
user        = dvbapi
pwd         = dvbapi
group       = 1
au          = movistar
uniq        = 1
monlevel    = 1
```

## Proveedores

- https://cccam-oscam.com/spain/
- https://1cccam1oscam.com/
- https://t.me/+UPcariDNnPWSF4VN

## OpenVPN

Algunos proveedores dan acceso a servidores CCCAM de forma privada a través de un perfil OpenVPN. El proveedor proporciona un fichero `.ovpn` o `.conf`. Es importante añadir a este fichero las siguientes líneas:

```shell
route-nopull
route 10.8.0.0 255.255.255.0 (Sustiuir por la subred en la que se encuentre el servidor CCCAM)
```

Estas líneas impiden que todo el tráfico vaya por la VPN. Se limita al tráfico hacia el servidor CCCAM.

Este fichero se cargará en el servidor Linux que está corriendo OSCam. Como paso previo, debemos instalar OpenVPN. Para ello:

```shell
sudo apt-get install openvpn
```

El fichero `.conf` debe incluirse en la carpeta `/etc/openvpn/`. OpenVPN levanta automáticamente todos los `.conf` que encuentra en `/etc/openvpn/`. Es importante que este fichero sea propiedad del usuario `root` y tenga restringidos dichos permisos a `644`.

```shell
sudo chmod 644 /etc/openvpn/vpn_movistar.conf
sudo chown root /etc/openvpn/vpn_movistar.conf
sudo chgrp root /etc/openvpn/vpn_movistar.conf
```

## Referencias

- [Ubuntu Server: Instalacion basica y configuración oscam](https://jungle-team.com/ubuntu-server-instalacion-basica-y-configuracion-oscam/)
- [Instalación OsCAM sobre Debian/Ubuntu - cmos486](https://www.cmos486.es/blog/48-cardsharing/oscam/282-instalacion-oscam-sobre-debian-ubuntu)