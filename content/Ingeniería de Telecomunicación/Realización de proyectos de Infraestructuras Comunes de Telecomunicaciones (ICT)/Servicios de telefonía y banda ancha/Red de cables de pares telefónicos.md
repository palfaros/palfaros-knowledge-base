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

### Dimensionamiento mínimo de la red de distribución

#### Edificaciones con una vertical

Conocida la necesidad futura a largo plazo, tanto por plantas como en el total de la edificación, o estimada dicha necesidad según lo indicado en el apartado anterior, se dimensionará la red de distribución con arreglo a los siguientes criterios:
- La cifra de demanda prevista se multiplicará por el factor 1,2, lo que asegura una reserva suficiente para prever posibles averías de algunos pares o alguna desviación por exceso en la demanda de líneas.
- Obtenido de esta forma el número teórico de pares, se utilizará el cable normalizado de capacidad igual o superior a dicho valor, o combinaciones de varios cables, teniendo en cuenta que para una distribución racional el cable máximo será de 100 pares, debiendo utilizarse el menor número posible de cables de acuerdo con la siguiente tabla:

	![[Tipos_cable_pares.png]]

El dimensionado de la red de distribución se proyectará con cable o cables multipares, cuyos pares estarán todos conectados en las regletas de salida del punto de interconexión.

En el caso de **edificios con una red de distribución/dispersión inferior o igual a 30 pares, ésta podrá realizarse con cable de uno o dos pares** desde el punto de distribución instalado en el registro principal. Del registro principal partirán, en su caso, los cables de acometida que subirán por las plantas para acabar directamente en los PAU.

Así, **si el número de pares en la red interior es menor a 30, se podrá diseñar una topología de red en estrella, y si es mayor en árbol-rama.**

![[Cables_de_pares.png]]

Los puntos de distribución estarán formados por las regletas de conexión en cantidad suficiente para agotar con holgura toda la posible demanda de la planta correspondiente. El número de regletas se hallará calculando el cociente entero redondeado por exceso que resulte de dividir el total de pares del cable, o de los cables, de distribución por el número de plantas y por cinco o diez, según el tipo de regleta a utilizar.

#### Edificaciones con varias verticales

La red de cada vertical será tratada como una red de distribución independiente, y se diseñará de acuerdo con el apartado anterior.

### Dimensionamiento mínimo de la red de dispersión

Se instalarán cables de pares de acometida que cubran la demanda prevista, y se conectarán al correspondiente terminal de la regleta del punto de distribución, y terminarán en el PAU de cada vivienda en la roseta correspondiente.

![[Red_distribución_dispersión_telefonía.png]]

### Dimensionamiento mínimo de la red interior de usuario

En principio el reglamento no contempla redes interiores de usuario con cable de pares, sino que en el caso que la red de distribución sea de cable de pares, la red interior de usuario será de cable de pares trenzados (UTP).

### Particularidades de los conjuntos de viviendas unifamiliares

En el caso de viviendas unifamiliares, se utilizará un RITU, donde se ubicarán los paneles de entrada. La red de distribución será similar a la ya indicada, con la singularidad de que el recorrido vertical de los cables se transformará en horizontal.

En este caso se utilizará la distribución **árbol rama a partir de 10 PAU’s**.

En el caso de que no haya operadores y no vaya a instalarse este cableado en la ejecución de la ICT, deberemos proyectar las canalizaciones necesarias provistas de hilos-guía.

### Cálculo de atenuaciones

En el caso de la topología de red árbol - rama, debe definirse el tipo de derivadores y sus características para garantizar el cumplimiento de los valores de atenuación requeridos.

La atenuación total de la red de cables coaxiales producida en las redes de distribución y dispersión debe de calcularse y su valor debe ser menor que el indicado en el reglamento, en función de la topología de éstas, se deberá cumplir:
- Topología en estrella: La atenuación máxima entre el registro principal coaxial y el PAU más alejado no será superior a 20 dB en ningún punto de la banda 86 MHz - 860 MHz. (considerando una longitud máxima de cable RG-59 de 100 m y una atenuación de 0,14dB/m)
- Topología en árbol-rama: La atenuación máxima entre el registro principal coaxial y el PAU más alejado no será superior a 36 dB en ningún punto de la banda 86 MHz - 860 MHz y a 29 dB en ningún punto de la banda 5 MHz - 65 MHz.
- Casos singulares: Cuando la configuración de la edificación impida el cumplimiento de los requisitos de atenuación máxima en los dos casos anteriores, el proyectista adoptará los criterios de diseño que estime oportuno pudiendo combinar ambos tipos de topologías para proporcionar el servicio al 100% de los PAU de la edificación.

El cálculo de la atenuación se realiza de la siguiente manera:
- Distribución en estrella: En el caso de red en estrella, la atenuación será la del cable más la de un conector F, el situado en el extremo del Punto de Interconexión. El Reglamento también indica que el cable coaxial debe ser de tipo RG 59 y también define la atenuación máxima del cable de este tipo, 24,5dB a 825 MHz. Partiendo de los datos de los fabricantes de cable se tomará la atenuación del cable a utilizar, que deberá ser menor o igual a la especificada y se multiplicará por el número de metros desde el PI al PAU más alejado y se añadirá la atenuación de un conector F. La atenuación de los conectores F no está limitada en el Reglamento, pero su valor típico es de 0,4 dB.
- Distribución en árbol-rama: Deben definirse el tipo de derivadores y sus características para garantizar el cumplimiento de los valores de atenuación requeridos. La atenuación de la red es debida a los metros de cable coaxial y a la atenuación en paso de los derivadores a instalar. Si la atenuación resulta superior a la indicada en el reglamento se revisará la composición de la misma con el cambio de derivadores de la red o a la utilización de un cable para la red de distribución, y acaso para la red de dispersión de menor pérdida. El Reglamento permite combinar ambos tipos de topologías (estrella y árbol rama) cuando no sea posible conseguir el cumplimiento de los valores máximos de atenuación con ninguna de ellas.