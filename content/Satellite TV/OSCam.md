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

Referencias:
- [Ubuntu Server: Instalacion basica y configuración oscam](https://jungle-team.com/ubuntu-server-instalacion-basica-y-configuracion-oscam/)
- [Instalación OsCAM sobre Debian/Ubuntu - cmos486](https://www.cmos486.es/blog/48-cardsharing/oscam/282-instalacion-oscam-sobre-debian-ubuntu)

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
cd /oscam/oscam
```