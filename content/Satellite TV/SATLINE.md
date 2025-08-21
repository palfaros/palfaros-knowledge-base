---
title: SATLINE
date: 2025-08-19
draft: true
---
## ¿Qué es SATLINE y qué ofrecen?

SATLINE es una compañía especializada en soluciones basadas en SAT>IP virtual, es decir, transforman señales de satélite DVB en *tuners* virtuales que se pueden consumir mediante IP sin necesidad de hardware satelital local.

## Servicios

### Servidores virtuales SAT>IP (VPS)

Desde unos 37 €/mes con un satélite, 2 núcleos, 8 GB RAM, 40 GB NVMe y 200 Mbps de ancho de banda. Se ofrece la tecnología con *tuners* virtuales.
### Servidores físicos dedicados con DVB real

Desde 145 €/mes (Starter Dedicated Media Streamer), con tarjeta DVB (ej. Digital Devices Max SX8 Pro), LNB, CPU Xeon, RAM ECC, redundancia, gestión remota (iLO/iDRAC). Los planes intermedios y avanzados llegan hasta tres sintonizadores físicos y tienen mayor capacidad.        
### Infraestructura profesional y soporte técnico

Sus servidores están colocados en centros de datos Tier III, con alta disponibilidad, protección DDoS, redundancia y monitoreo 24/7.

También gestionan antenas satelitales propias, vigiladas y operativas todo el año.
## Compatibilidad de software

SATLINE asegura compatibilidad con los clientes SAT>IP más populares, como: 
- TVHeadend
- Cesbo Astra
- VLC
- Kodi
- MuMuDVB
- GStreamer
- Me TV
- Kaffeine
- MythTV
- VDR

## Despliegue TVHeadend

Referencia: https://satline.tv/knowledge-base/satip-deployment-guide/#satip-vtuners-for-tvheadend

En primer lugar, ingresamos en el servidor como *root* y actualizamos el sistema:

```shell
sudo su -
apt update && apt upgrade -y && apt install wget
```

En segundo lugar, descargamos el *script* de despliegue de TVHeadend con soporte de SAT>IP *tuner*.

```shell
wget -qO- https://satline.tv/tools/satip-client-software-deploy.sh | bash
```

Una vez lanzado el *script* aparecerá un cuadro de diálogo en el que se nos pedirá el cliente SAT>IP que queremos instalar. Seleccionamos la opción 2, correspondiente a TVHeadend 4.3.

![[SATLINE_TVHeadend_Installation_1.png]]

El instalador nos pedirá introducir un nombre de usuario para la cuenta de administrador (por ejemplo, *alfialaves*).

![[SATLINE_TVHeadend_Installation_2.png]]

Posteriormente, el instalador nos pedirá introducir la contraseña para dicho usuario (por ejemplo, *tetra*).

![[SATLINE_TVHeadend_Installation_3.png]]

Una vez configurada la cuenta de administrador se nos indica que la web de TVHeadend será accesible desde la URL: http://localhost:9981/. Los VPS de SATLINE cuentan con IP pública, por lo que sustituiremos *localhost* por la dirección IP del VPS.

![[SATLINE_TVHeadend_Installation_4.png]]

Una vez finalizada la instalación, el siguiente paso es configurar los *tuners* SAT>IP. En primer lugar, debemos indicar el número de *tuners* a configurar.

![[SATLINE_TVHeadend_Installation_5.png]]

En segundo lugar, se introduce la dirección IP del SAT>IP que nos haya indicado SATLINE en un correo una vez hayamos contratado sus servicios.

![[SATLINE_TVHeadend_Installation_6.png]]

Al introducir la dirección IP de el/los *tuners* el proceso de instalación TVHeadend habrá concluido.

![[SATLINE_TVHeadend_Installation_7.png]]

![[Pasted image 20250820013319.png]]

![[Pasted image 20250820013426.png]]

![[Pasted image 20250820013646.png]]

![[Pasted image 20250820014303.png]]

![[Pasted image 20250820013801.png]]