---
title: TVHeadend
date: 2025-08-21
draft: false
---
## ¿Qué es TVHeadend?

TVHeadend (o **Tvheadend**) es un **servidor de televisión digital** de código abierto 📺.  
Se suele usar en Linux para recibir, grabar y distribuir canales de TV a través de la red.
### ¿Qué hace?

- Sintoniza TV de distintas fuentes:
	- Antena (DVB-T/T2, DVB-S/S2, DVB-C).
    - IPTV (listas M3U, streams HTTP, UDP, RTSP).
    - SAT>IP.
- Actúa como backend: recibe la señal, la organiza, la decodifica (si tienes soporte de OSCam o un CAM físico) y la pone disponible.
- Sirve los canales a clientes como: Kodi, VLC, apps IPTV (IPTV Extreme, TiviMate…), televisores Smart TV, etc.
### Funciones típicas

- Escaneo de canales y asignación automática de nombres/iconos.
- Guía de Programación (EPG).
- Grabaciones programadas (como un DVR).
- Soporte de múltiples usuarios con permisos.
- Integración con **OSCam** para decodificar canales encriptados.
- Exportación de **playlist M3U** o **EPG XMLTV** para apps IPTV.
### ¿Cómo se usa?

1. Instalas Tvheadend en un servidor (Raspberry Pi, PC, NAS…).
2. Configuras la fuente (sintonizador o lista IPTV).
3. Mapeas canales → generas una **playlist M3U**.
4. Accedes desde clientes por:
    - http://IP:9981 → interfaz web.
    - http://IP:9981/playlist → lista M3U para apps IPTV.

## Configuración

En primer lugar, ingresamos en la web de configuración a través de la URL: `http://<your-server-ip>:9981`. Una vez accedida, modificamos el nivel de vista por defecto (*Default wiew level*) a *Experto* dentro del menú *Configuration > General > Base*.

![[TVHeadend_Configuration_1.png]]

### Configuración *Tuners*

#### *Tuner Delivery Mode*

El siguiente paso es navegar al menú *Configuration > DVB Inputs > TV Adapters*. Para cada *tuner* habilitamos la opción *RTP/AVP/TCP transport supported* dentro de las opciones avanzadas (*Advanced Settings*).

![[TVHeadend_Configuration_2.png]]

Por otro lado, desde el mismo menú también debemos habilitar cada *tuner*.

![[TVHeadend_Configuration_3.png]]
#### Creación redes y muxes

En primer lugar, navegamos al menú *Configuration > DVB Inputs > Networks*. Creamos una red con los siguientes parámetros:
- Enabled: Sí
- Network name: Astra 19.2E
- Pre-defined muxes: > 19.2E:Astr
- Orbital position: 19.2E : Astra 1KR/1L/1M/1N

![[TVHeadend_Configuration_4.png]]

Al especificar el uso *muxers* predefinidos para Astra 19.2E, dichos *muxes* se añadirán directamente a la pestaña *Configuration > DVB Inputs > Muxes*.

![[TVHeadend_Configuration_5.png]]

#### Vincular *tuners* a redes

Una vez creada la red, el siguiente paso es asignar dicha red a cada uno de los *tuners*. Para ello, navegamos al menú *Configuration > DVB Inputs > TV Adapter*. Para cada *tuner*, modificamos los siguientes parámetros:
- Enabled: Sí
- Networks: Astra 19.2E

![[TVHeadend_Configuration_6.png]]

### Escaneo y mapeo de servicios

Al vincular los *tuners* a la red configurada, comenzará automáticamente el escaneo de servicios. Los servicios encontrados se mostrarán en la pestaña *Configuration > DVB Inputs > Services*.

![[TVHeadend_Configuration_7.png]]

Una vez escaneados, procedemos al mapeo de servicios en canales, seleccionando, al menos, las siguientes opciones:
- *Map encrypted services*
- *Check availability*

![[TVHeadend_Configuration_8.png]]

Los canales mapeados aparecerán junto a su EPG en el menú *Electronic Program Guide*. El progreso del escaneo se muestra en tiempo real en el menú *Status*.

### Conexión a servidor OSCam

Para descifrar canales encriptados TVHeadend requiere de un servidor de claves. La solución propuesta consiste en un servidor OSCam local que hará de *proxy*. Esta configuración se realiza desde el menú *Configuration > CAs*. Añadimos una entrada con los siguientes parámetros:
- Enabled: Sí
- Client name: Usuario configurado en el fichero `/usr/local/etc/oscam.user` dentro del apartado `[account]`.
- Mode: `OSCam net protocol (rev >= 10389)`.
- Camd.socket filename / IP Address (TCP mode): `127.0.0.1` (*localhost*).
- Listen / Connection port: Puerto configurado  en el fichero `/usr/local/etc/oscam.conf` dentro del apartado `[dvbapi]`.
- CW Mode: `Standard / auto`.

![[TVHeadend_Configuration_9.png]]