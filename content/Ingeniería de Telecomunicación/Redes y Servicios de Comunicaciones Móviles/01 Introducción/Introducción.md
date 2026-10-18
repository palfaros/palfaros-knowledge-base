---
title: Introducción
date: 2026-10-18
---
## Generaciones de tecnologías de comunicaciones móviles

Cada generación de comunicaciones móviles introduce mejoras en la tecnología de acceso radio, la capacidad de transmisión y los servicios ofrecidos. Aunque suele asociarse cada generación a una década, la estandarización, el despliegue comercial y la adopción masiva no ocurren simultáneamente, y varias generaciones pueden coexistir durante años.

### 1G: Telefonía móvil analógica

La primera generación (1G) se desarrolló principalmente durante los años 80 y llegó a España a principios de los 90, más tarde que a otros países como Estados Unidos, Japón o los países nórdicos.

- **Tecnología**: transmisión analógica de voz, generalmente mediante FDMA.
- **Servicios**: telefonía móvil, sin los servicios digitales que aparecerían posteriormente.
- **Limitaciones**: capacidad reducida, escasa seguridad y ausencia de servicios avanzados de datos.

En España, el servicio comercial más conocido fue **MoviLine**, de Telefónica, en un mercado que inicialmente estaba dominado por el monopolio de este operador.

### 2G: GSM

La segunda generación (2G) supuso el paso de la telefonía analógica a la digital. GSM (*Global System for Mobile Communications*) comenzó a estandarizarse en Europa en los años 80 y sus primeras redes comerciales aparecieron en 1991.

- **Estandarización**: GSM se desarrolló inicialmente en la CEPT, que transfirió posteriormente las actividades de estandarización a ETSI (*European Telecommunications Standards Institute*).
- **Tecnología de acceso**: combinación de FDMA y TDMA, que permite compartir las frecuencias entre distintos usuarios.
- **Servicio principal (servicios finales)**: voz digital. GSM se diseñó específicamente para transmitir voz de forma eficiente, definiendo desde la codificación de voz y de canal hasta la organización de los bits en las tramas radio.

El códec *GSM Full Rate* original comprimía la voz a aproximadamente 13 kbit/s. Esta tasa corresponde a la codificación de voz, no a la tasa total transmitida por radio, que también incluye información de protección y control.

**SMS**: los mensajes cortos aprovechan los mecanismos de señalización de GSM, sin necesidad de establecer una llamada de voz ni reservar un canal de tráfico dedicado durante toda la transmisión. Aunque consumen recursos de señalización, permiten transportar pequeños mensajes de forma eficiente.

**Evolución hacia los datos**: posteriormente se incorporaron GPRS, que permite transmitir datos mediante conmutación de paquetes, y EDGE, que mejora las tasas de transmisión mediante técnicas radio más eficientes. A pesar de estas mejoras, las velocidades eran muy inferiores (384 kbps máx.) a las de las generaciones posteriores.

### 3G: UMTS

La tercera generación (3G) comenzó a estandarizarse a finales de los años 90 y sus primeras redes comerciales aparecieron a principios de los 2000. Se diseñó con una orientación mayor hacia los datos y los servicios multimedia, además de mantener la telefonía tradicional, es decir, el estándar nace con la vocación de multiplexar todo tipo de servicios de forma eficiente.

- **Tecnología de acceso**: WCDMA, una variante de CDMA que permite distinguir a distintos usuarios mediante códigos.
- **Servicios**: voz, datos, acceso a Internet y aplicaciones multimedia.
- **Velocidades iniciales**: hasta unos 2 Mbit/s en condiciones favorables y de movilidad reducida (peatón).

UMTS mantuvo inicialmente dos dominios diferenciados: uno de conmutación de circuitos para la voz tradicional y otro de conmutación de paquetes para los datos.

Posteriormente aparecieron varias mejoras:
- HSDPA: aumenta la velocidad de transmisión en sentido descendente.
- HSUPA: mejora la transmisión en sentido ascendente.
- HSPA+: introduce mejoras adicionales de capacidad y rendimiento.

Estas evoluciones permitieron aumentar considerablemente las velocidades de 3G. Sin embargo, durante los primeros años, el uso de los servicios de datos estuvo limitado por la disponibilidad de aplicaciones, terminales y demanda por parte de los usuarios.

### 4G: LTE

La cuarta generación (4G) comenzó a estandarizarse durante los años 2000. La primera versión de LTE (*Long Term Evolution*) se publicó en 3GPP Release 8, en 2008, y los despliegues comerciales llegaron a partir de 2009-2010.

- **Tecnología de acceso**: OFDMA en el enlace descendente y SC-FDMA en el ascendente en LTE convencional.
- **Objetivo principal**: proporcionar conectividad de banda ancha mediante una arquitectura basada en paquetes IP.
- **Ancho de banda**: hasta 20 MHz por portadora LTE convencional, ampliable mediante agregación de portadoras en LTE-Advanced.

El cambio más importante respecto a las generaciones anteriores es que LTE no incorpora un servicio de voz por conmutación de circuitos en su arquitectura básica, es decir, desaparece lo que se conoce como servicios finales. La red proporciona conectividad IP y la voz puede ofrecerse mediante **VoLTE**, utilizando IMS (IP Multimedia Subsystem) y SIP para gestionar las sesiones.

El audio se transporta habitualmente mediante RTP sobre UDP/IP, además de las cabeceras y mecanismos propios de las capas de radio, como PDCP, RLC y MAC. Esto introduce overhead adicional respecto al transporte de voz tradicional de GSM, aunque técnicas como la compresión de cabeceras reducen su impacto.

La arquitectura IP ofrece mayor flexibilidad para desplegar distintos servicios sobre una misma infraestructura, aunque la eficiencia depende del tipo de tráfico y de los mecanismos utilizados. LTE también admite técnicas MIMO para aumentar la capacidad y la eficiencia espectral.

### 5G: NR

La quinta generación (5G) comenzó a estandarizarse a finales de los años 2010 y su despliegue comercial se inició en torno a 2019, con una expansión importante durante los años 2020.

- **Tecnología de acceso**: NR (New Radio), basada en principios OFDM similares a los de LTE, pero con mayor flexibilidad de configuración.
- **Objetivos**: aumentar la capacidad y las velocidades, reducir la latencia en determinadas condiciones y admitir servicios con requisitos muy diversos.
- **Ancho de banda**: admite canales de hasta 100 MHz en FR1 y hasta 400 MHz en FR2, según la banda y la configuración.
- **Tecnologías relevantes**: MIMO masivo, formación de haces (*beamforming*) y uso de nuevas bandas de frecuencia, incluidas las milimétricas.

El aumento del *throughput* se consigue mediante la combinación de mayores anchos de banda, mejoras en la eficiencia espectral y técnicas avanzadas de transmisión. No depende únicamente de disponer de más espectro.

La reducción de la latencia tampoco depende exclusivamente de la interfaz radio. Intervienen el procesamiento de la red, el transporte y la distancia al servidor. Por ello, el *edge computing*, que acerca los recursos de computación al usuario, es imprescindible en el caso de aplicaciones sensibles al retardo.