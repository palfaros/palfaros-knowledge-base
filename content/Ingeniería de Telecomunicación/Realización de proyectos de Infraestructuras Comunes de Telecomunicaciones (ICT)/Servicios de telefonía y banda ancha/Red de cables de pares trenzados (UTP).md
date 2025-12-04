---
title: Red de cables de pares trenzados (UTP)
date: 2025-12-02
---
Esta red puede soportar la telefonía clásica y el ADSL pero su mayor potencial es ser utilizado como el último paso de una red de banda ancha (FTTB).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre cada una de las redes de alimentación de los operadores del servicio y las redes de distribución de la ICT de la edificación, y delimita las responsabilidades en cuanto a mantenimiento entre el operador del servicio y la propiedad de la edificación. Se situará en el registro principal, con carácter general, en el interior del recinto de instalaciones de telecomunicación inferior del edificio (RITI), y estará compuesto por:
- Una serie de paneles de conexión o regletas de entrada donde finalizarán las redes de alimentación de los distintos operadores de servicio
- Una serie de paneles de conexión o regletas de salida donde finalizará la red de distribución de la edificación
- Una serie de latiguillos de interconexión que se encargarán de dar continuidad a las redes de alimentación hasta la red de distribución de la edificación en función de los servicios contratados por los distintos usuarios.

![[Punto_interconexion_pares_y_trenz.png]]

#### Regletas o paneles de conexión de entrada

Se reservará espacio suficiente para albergar los pares de las redes de alimentación; en el cálculo del espacio necesario se tendrá en cuenta que el número total de pares (para todos los operadores del servicio) de los paneles o regletas de entrada será como mínimo 1,5 veces el número de pares de los paneles o regletas de salida, salvo en el caso de edificios o conjuntos inmobiliarios con un número de PAU igual o menor que 10, en los que será, como mínimo, dos veces el número de pares de los paneles o regletas de salida.

#### Regletas o panales de conexión de salida para redes de distribución de pares trenzados

El panel de conexión o regleta de salida deberá estar constituido por un panel repartidor dotado con tantos conectores hembra miniatura de ocho vías (RJ45) como acometidas de pares trenzados constituyan la red de distribución de la edificación. La unión con las regletas de entrada se realizará mediante latiguillos de interconexión.

![[Regleta_panel_conexion_hem.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT de la edificación. En este caso se hace distribución en estrella (cables UTP directos del RITI al PAU) por lo que en el registro secundario no habrá conexiones. Se deben dejar eso sí en los registros secundarios, cables UTP de reserva que quedarán enrollados en forma de bucle con longitud suficiente para llegar al PAU más alejado de esa planta.

### Punto de acceso al usuario (PAU)

Realiza la unión entre la red de dispersión y la red interior de usuario de la ICT de la edificación. Permite la delimitación de responsabilidades en cuanto a la generación, localización y reparación de averías entre la propiedad de la edificación o la comunidad de propietarios y el usuario final del servicio. Se ubicará en el registro de terminación de red situado en el interior de cada vivienda, local o estancia común.

Cada una de las acometidas de pares trenzados de la red de dispersión terminará en un conector RJ-45 hembra que hará de PAU con “medio de corte y punto de prueba”. La siguiente imagen muestra un conector RJ-45 macho (izquierda) y un conector RJ-45 hembra (derecha).

![[RJ_45_macho_hembra.png]]

### Bases de acceso terminal

Realizan la unión entre la red interior de usuario y cada uno de los terminales. 

Los hilos conductores de cada rama de la red interior se conectarán a los 8 contactos del conector RJ-45 hembra miniatura de 8 vías de la BAT en que terminen.

![[BAT_Pares_Trenzados.png]]

A continuación se muestra un esquema general de una red UTP en el interior de un edificio.

![[Esquema_red_UTP.png]]

## Diseño y dimensionamiento de red

### Previsión de la demanda

Como criterio de referencia, la tecnología basada en redes de pares trenzados se utilizará en aquellas edificaciones en las que la **distancia entre el punto de interconexión y el punto de acceso al usuario más alejado es inferior a 100 metros**.

Para que la red interior sea capaz de atender la demanda a largo plazo del inmueble, se realizará una evaluación de las necesidades. Primeramente será necesario calcular el número de acometidas necesarias. Cada acometida estará formada por un cable no apantallado de 4 pares trenzados de cobre de Clase E (Categoría 6) o superior, y se aplicarán los valores siguientes:
1. Viviendas: 1 cable UTP por vivienda.
2. Locales comerciales u oficinas en edificaciones de viviendas:
	1. Cuando esté definida la distribución en planta de los locales u oficinas, se considerará 1 cable UTP para cada local u oficina.
	2. Si sólo se conoce la superficie destinada a locales u oficinas: 1 cable UTP por cada 33 m<sup>2</sup> útiles, como mínimo.
3.  Locales comerciales u oficinas en edificaciones destinadas fundamentalmente a este fin:
	1. Cuando esté definida la distribución en planta de los locales u oficinas, se considerarán 2 cables UTP para cada local u oficina.
	2. Si sólo se conoce la superficie destinada a locales u oficinas: 1 cable UTP por cada 33 m<sup>2</sup> útiles, como mínimo.
4. Para dar servicio a estancias o instalaciones comunes del edificio: 2 cables UTP para la edificación. Se excluye de las estancias comunes el ascensor.
5. Ascensores. (en función de su normativa específica).

En el caso de que no existiesen en la zona operadores que den este servicio, se dejarán las canalizaciones necesarias para atender las previsiones señaladas anteriormente dotadas con los correspondientes hilos-guía.

### Dimensionamiento mínimo de la red de distribución

- Edificaciones con una vertical: Conocida la necesidad futura a largo plazo, tanto por plantas como en el total de la edificación, o estimada dicha necesidad según lo indicado en el apartado anterior, se dimensionará la red de distribución **multiplicando la cifra de demanda prevista por el factor 1,2**, lo que asegura una reserva suficiente para prever posibles averías de alguna acometida o alguna desviación por exceso en la demanda de acometidas.
- Edificaciones con varias verticales: La red de cada vertical será tratada como una red de distribución independiente, y se diseñará de acuerdo con el apartado anterior.

### Dimensionamiento mínimo de la red de dispersión

La red de distribución continúa como red de dispersión, instalándose los pares trenzados necesarios que cubran la demanda prevista como prolongación de la red de distribución. Irán desde el registro secundario y terminarán en el PAU de cada vivienda en la roseta correspondiente.

Los pares trenzados de reserva se dejarán almacenados en los registros secundarios, con la longitud suficiente para poder llegar al PAU más alejado de la planta.

### Dimensionamiento mínimo de la red interior de usuario

- Viviendas: En la estancia principal (**salón**) **el número de registros de toma equipados con BAT será de dos como mínimo**. En uno de ellos se equipará BAT con dos tomas o conectores hembra alimentados por acometidas de pares trenzados independientes procedentes del PAU, pudiendo ser soportadas por canalizaciones independientes si lo requiere la ubicación elegida de las tomas. Una de éstas deberá situarse a menos de 50 centímetros de la toma de fibra óptica. En el resto de estancias, excluidos baños y trasteros, se dispondrá de registro de toma equipado con BAT. **Como mínimo, en otra de las estancias, en el registro de toma, se equipará BAT con dos tomas o conectores hembra,** alimentadas por acometidas de pares trenzados independientes procedentes del PAU, de las mismas características que el indicado para la estancia principal. **Cada una de las tomas dobles mencionadas en este párrafo se podrá sustituir por dos tomas simples.**
- Locales u oficinas, cuando esté definida su distribución interior en estancias: El número de **registros de toma será de uno por cada estancia**, excluidos baños y trasteros, **equipados con BAT con dos tomas o conectores hembra**, alimentadas por acometidas de pares trenzados independientes procedentes del PAU.
- Locales u oficinas, cuando no esté definida su distribución en planta: **No se instalará red interior de usuario**. En este caso, el diseño y dimensionamiento de la red interior de usuario, así como su realización futura, será responsabilidad de la propiedad del local u oficina, cuando se ejecute el proyecto de distribución en estancias.
- Estancias o instalaciones comunes del edificio: El proyectista definirá el dimensionamiento de la red interior en estas estancias teniendo en cuenta la finalidad de las estancias y las prestaciones previstas para la edificación.

### Particularidades de los conjuntos de viviendas unifamiliares

En el caso de viviendas unifamiliares, se utilizará un RITU, donde se ubicarán los paneles de entrada. La red de distribución será similar a la ya indicada, con la singularidad de que el recorrido vertical de los cables se transformará en horizontal.

En el caso de que no haya operadores y no vaya a instalarse este cableado en la ejecución de la ICT, deberemos proyectar las canalizaciones necesarias **provistas de hilos guía**.

![[Viviendas_unifamiliares.png]]

### Cálculo de atenuaciones

La Orden ITC/1644/2011 en su punto 1.2.C.1) 3.i) requiere el cálculo de la atenuación de la red de de distribución-dispersión de cables trenzados y en el punto 1.2.C.2) 2.i) en el caso de la red interior de usuario, pero no indica ningún valor máximo de dicha atenuación.

La norma UNE-EN 50173-1 establece, como valor máximo de atenuación para un canal de cable de pares trenzados de Clase E (100 m de longitud máxima) 35,9 dB a 250 MHz. Se puede tomar un valor típico de atenuación de los cables de pares trenzados de 31 dB/ 100 m a 250 MHz.

Para el cálculo de la atenuación en la red de distribución-dispersión de cables de pares trenzados hay que considerar, además de la atenuación del cable, la del conector RJ45 macho del extremo de cada rama que se conecta al Punto de Interconexión.

Para el cálculo de la atenuación en la red interior de usuario de cables de pares trenzados hay que considerar, además de la atenuación del cable, la del conector RJ45 macho de la roseta del PAU, la del multiplexor pasivo (equivalente a dos conectores RJ45) y la de la toma.

Para los conectores RJ45 y las tomas se considera una atenuación de 0,3 dB. Dado que se dice que la longitud de la red de distribución/dispersión de cables trenzados debe ser inferior a 100 m se puede considerar este valor como el máximo de atenuación permitida que sería =100 · 0,31 + 0,3 = 31,30 dB.