---
title: Red de cables de pares telefónicos
date: 2025-12-04
---

Se trata del vehículo tradicional de la telefonía y actualmente también se emplea para conexiones de banda ancha (ADSL).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre cada una de las redes de alimentación de los operadores del servicio y las redes de distribución de la ICT de la edificación, y delimita las responsabilidades en cuanto a mantenimiento entre el operador del servicio y la propiedad de la edificación.

Los pares de las redes de alimentación se terminan en unas regletas de conexión (regletas de entrada) independientes para cada operador del servicio. Estas regletas de entrada serán instaladas por dichos operadores. Los pares de la red de distribución se terminan en otras regletas de conexión (regletas de salida), que serán instaladas por la propiedad del inmueble.

![[Punto_interconexion_pares_y_trenz.png]]

El número total de pares (para todos los operadores del servicio) de las regletas de entrada será como mínimo 1.5 veces el número de pares de las regletas de salida, salvo en el caso de edificios o conjuntos inmobiliarios con un número de PAU igual o menor que 10, en los que será, como mínimo, dos veces el número de pares de las regletas de salida. La unión entre ambas regletas se realiza mediante hilos puente.

![[Punto_Interconexión_Red_Pares.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT de la edificación. Cuando se trate de distribuir como máximo 30 pares por una vertical, se permite el cableado directo en estrella (sin cable troncal ni regletas de conexión).

![[Esquema_Punto_Distri_Red_Pares.png]]

### Punto de acceso al usuario (PAU)

Realiza la unión entre la red de dispersión y la red interior de usuario de la ICT de la edificación. Permite la delimitación de responsabilidades en cuanto a la generación, localización y reparación de averías entre la propiedad de la edificación o la comunidad de propietarios y el usuario final del servicio. Se ubicará en el registro de terminación de red situado en el interior de cada vivienda, local o estancia común.

Cada uno de los pares de la red de dispersión se terminará en los contactos 4 y 5 de un conector o roseta hembra miniatura de ocho vías (RJ-45), que servirá como PAU de cada vivienda, local o estancia común. Cada conector o roseta hembra, al servir simultáneamente como “medio de corte” y “punto de prueba”.

A continuación se muestra un esquema general de una red de cable de pares en el interior de un edificio.

![[Esquema_Red_Pares.png]]

Las siguientes imágenes muestran y cable de pares telefónicos y el código de colores de los pares en cable de 25 pares.

![[Cable_pares_telefónicos.png]]

![[Código_colores_pares_telefónicos.png]]

### Bases de acceso terminal (BAT)

Realizan la unión entre la red interior de usuario y cada uno de los terminales telefónicos.

![[BAT_Pares.png]]

## Diseño y dimensionamiento de red

### Previsión de la demanda

Como criterio de referencia, la red de pares se utilizará en aquellas edificaciones en las que **la distancia entre el punto de interconexión y el punto de acceso al usuario más alejado sea superior a 100 metros.**

Para determinar el número de líneas necesarias, cada una formada por un par de cobre, se aplicarán los valores siguientes:
1. Viviendas: 2 líneas por cada vivienda.
2. Locales comerciales u oficinas en edificaciones de viviendas:
	1. Cuando esté definida la distribución en planta de los locales u oficinas, se considerarán 3 líneas para cada local u oficina.
	2. Si sólo se conoce la superficie destinada a locales u oficinas: 1 línea por cada 33 m<sup>2</sup> útiles, como mínimo.
3.  Locales comerciales u oficinas en edificaciones destinadas fundamentalmente a este fin:
	1. Cuando esté definida la distribución en planta de los locales u oficinas, se considerarán 3 líneas para cada local u oficina.
	2. Si sólo se conoce la superficie destinada a locales u oficinas,  e utilizará como base de diseño la consideración de 3 líneas por cada 100 m<sup>2</sup> o fracción.
4. Para dar servicio a estancias o instalaciones comunes del edificio: 2 líneas para la edificación. Se excluye de las estancias comunes el ascensor.
5. Ascensores. (en función de su normativa específica).

Si no existen operadores de servicio se dejarán las canalizaciones necesarias para atender las previsiones del apartado anterior dotadas con los correspondientes hilos-guía.
