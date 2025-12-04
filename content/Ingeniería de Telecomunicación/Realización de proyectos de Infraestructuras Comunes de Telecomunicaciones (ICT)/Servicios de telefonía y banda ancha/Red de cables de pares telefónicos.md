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

La red de distribución continúa como red de dispersión, instalándose los pares trenzados necesarios que cubran la demanda prevista como prolongación de la red de distribución. Irán desde el registro secundario y terminarán en el PAU de cada vivienda en la roseta correspondiente.

Los pares trenzados de reserva se dejarán almacenados en los registros secundarios, con la longitud suficiente para poder llegar al PAU más alejado de la planta.

![[Red_distribución_dispersión_telefonía.png]]

### Dimensionamiento mínimo de la red interior de usuario

- Viviendas: En la estancia principal (**salón**) **el número de registros de toma equipados con BAT será de dos como mínimo**. En uno de ellos se equipará BAT con dos tomas o conectores hembra alimentados por acometidas de pares trenzados independientes procedentes del PAU, pudiendo ser soportadas por canalizaciones independientes si lo requiere la ubicación elegida de las tomas. Una de éstas deberá situarse a menos de 50 centímetros de la toma de fibra óptica. En el resto de estancias, excluidos baños y trasteros, se dispondrá de registro de toma equipado con BAT. **Como mínimo, en otra de las estancias, en el registro de toma, se equipará BAT con dos tomas o conectores hembra,** alimentadas por acometidas de pares trenzados independientes procedentes del PAU, de las mismas características que el indicado para la estancia principal. **Cada una de las tomas dobles mencionadas en este párrafo se podrá sustituir por dos tomas simples.**
- Locales u oficinas, cuando esté definida su distribución interior en estancias: El número de **registros de toma será de uno por cada estancia**, excluidos baños y trasteros, **equipados con BAT con dos tomas o conectores hembra**, alimentadas por acometidas de pares trenzados independientes procedentes del PAU.
- Locales u oficinas, cuando no esté definida su distribución en planta: **No se instalará red interior de usuario**. En este caso, el diseño y dimensionamiento de la red interior de usuario, así como su realización futura, será responsabilidad de la propiedad del local u oficina, cuando se ejecute el proyecto de distribución en estancias.
- Estancias o instalaciones comunes del edificio: El proyectista definirá el dimensionamiento de la red interior en estas estancias teniendo en cuenta la finalidad de las estancias y las prestaciones previstas para la edificación.

### Particularidades de los conjuntos de viviendas unifamiliares

En el caso de viviendas unifamiliares, se utilizará un RITU, donde se ubicarán los paneles de entrada. La red de distribución será similar a la ya indicada, con la singularidad de que el recorrido vertical de los cables se transformará en horizontal.

En el caso de que no haya operadores y no vaya a instalarse este cableado en la ejecución de la ICT, deberemos proyectar las canalizaciones necesarias **provistas de hilos guía**.

### Cálculo de atenuaciones

La Orden ITC/1644/2011 en su punto 1.2.C.1) 3.i) requiere el cálculo de la atenuación de la red de de distribución-dispersión de cables trenzados y en el punto 1.2.C.2) 2.i) en el caso de la red interior de usuario, pero no indica ningún valor máximo de dicha atenuación.

La norma UNE-EN 50173-1 establece, como valor máximo de atenuación para un canal de cable de pares trenzados de Clase E (100 m de longitud máxima) 35,9 dB a 250 MHz. Se puede tomar un valor típico de atenuación de los cables de pares trenzados de 31 dB/ 100 m a 250 MHz.

Para el cálculo de la atenuación en la red de distribución-dispersión de cables de pares trenzados hay que considerar, además de la atenuación del cable, la del conector RJ45 macho del extremo de cada rama que se conecta al Punto de Interconexión.

Para el cálculo de la atenuación en la red interior de usuario de cables de pares trenzados hay que considerar, además de la atenuación del cable, la del conector RJ45 macho de la roseta del PAU, la del multiplexor pasivo (equivalente a dos conectores RJ45) y la de la toma.

Para los conectores RJ45 y las tomas se considera una atenuación de 0,3 dB. Dado que se dice que la longitud de la red de distribución/dispersión de cables trenzados debe ser inferior a 100 m se puede considerar este valor como el máximo de atenuación permitida que sería =100 · 0,31 + 0,3 = 31,30 dB.