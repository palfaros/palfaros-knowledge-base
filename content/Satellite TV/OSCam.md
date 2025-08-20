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



