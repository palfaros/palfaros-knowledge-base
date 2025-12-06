---
title: Red de cables coaxial
date: 2025-12-05
---
Se trata del vehículo tradicional para redes de banda ancha y TV (redes “de cable” con tecnología HFC).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre las redes de alimentación de los operadores del servicio y la de distribución de la ICT del inmueble, y delimita las responsabilidades en cuanto a mantenimiento entre el operador del servicio y la propiedad del inmueble.

![[Punto_interconexión_red_coaxial.png]]

El cable se podrá distribuir en “estrella” (un coaxial desde el RITI a cada PAU) o en “árbol-rama” (distribución con derivadores, similar a la de RTV pero de “abajo hacia arriba”):
- Red de distribución en estrella. El panel de conexión o regleta de entrada estará constituido por los derivadores necesarios para alimentar la red de distribución de la edificación cuyas salidas estarán dotadas con conectores tipo F hembra dotados con la correspondiente carga anti-violable. El panel de conexión o regleta de salida estará constituido por los propios cables de la red de distribución de la edificación terminados con conectores tipo F macho, dotados con la coca suficiente como para permitir posibles reconfiguraciones.
- Red de distribución en árbol-rama. Tanto el panel de conexión o regleta de entrada como el de salida, estarán dotados con tantos conectores tipo F hembra (entrada) o macho (salida), como árboles constituyan la red de distribución. El espacio interior del registro principal coaxial deberá ser suficiente para permitir la instalación de una cantidad de elementos de reparto con tantas salidas como conectores de salida que se instalen en el punto de interconexión y, en su caso, de los elementos amplificadores necesarios.

En los puntos de interconexión de redes de cables coaxiales configuradas en árbol-rama, todos los conectores que constituyen las regletas deberán estar convenientemente etiquetados de forma que cada uno de ellos identifique inequívocamente cada vivienda, local o estancia común a los que da servicio.

En la siguiente imagen se muestran:
- Conector tipo F macho (izquierda).
- Conector tipo F hembra (derecha).

![[Conectores_coaxiales.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT del inmueble. De nuevo debemos distinguir entre distribución en estrella y en árbol-rama:
- Red de distribución en estrella (cables directos del RITI al PAU): En este caso los cables de la red de distribución se encuentran, en este punto, en paso hacia la red de dispersión, por lo que el punto de distribución carece de implementación física, esto es, en el registro secundario no habrá conexiones.
- Red de distribución en árbol-rama: En este caso, el punto de distribución estará constituido por uno o varios derivadores con el número más reducido posible de salidas, terminadas en un conector tipo F con pin, capaz de alimentar a todos los PAU’s que atienda la red de dispersión que nace en el registro secundario; las salidas no utilizadas serán terminadas con una carga tipo F. La siguiente imagen muestra un esquema con este tipo de red de distribución.

![[Punto_distribución_coaxial_arbol_rama.png]]

### Punto de acceso al usuario (PAU)

Realiza la unión entre la red de dispersión y la red interior de usuario de la ICT del inmueble. Permite la delimitación de responsabilidades en cuanto a la generación, localización y reparación de averías entre la propiedad del inmueble o la comunidad de propietarios y el usuario final del servicio. Se ubicará en el interior de cada domicilio de usuario.

Por ley, el PAU debe ser un repartidor de dos salidas, al cual llega el cable de la red de Distribución/dispersión o red de dispersión, según el caso y del cual salen los dos cables que constituyen la red interior de usuario.

Ese distribuidor inductivo de dos salidas simétrico termina en un conector tipo F hembra, en cuya entrada se terminará el cable coaxial de la red de dispersión, debidamente conectorizado, para su posterior conexión a las correspondientes ramas de la red interior de usuario.

Los extremos de las diferentes ramas de la red interior de usuario de cables coaxiales, ubicados en el interior del registro de terminación de red, debidamente conectorizados, se conectarán al divisor simétrico identificando la BAT a la que prestan servicio.

![[Distribuidor_PAU.png]]

### Bases de acceso terminal (BAT))

En el caso de cableado coaxial, los cables se conectarán a los terminales tipo F de toma final con carga de cierre apropiado de la BAT en que terminen.

## Esquema general

La siguiente imagen muestra un esquema general de una **red de cables coaxiales con topología en estrella**.

![[Esquema_red_coaxial_estrella.png]]

La siguiente imagen muestra un esquema general de una **red de cables coaxiales con topología en árbol-rama**.

![[Esquema_red_coaxial_árbol_rama.png]]

## Diseño y dimensionamiento de red

### Previsión de la demanda

Para que la red interior sea capaz de atender la demanda a largo plazo del inmueble, se realizará una evaluación de las necesidades. Se aplicarán las normas siguientes:
1. Viviendas: Una acometida (1 coaxial) por cada vivienda.
2. Locales comerciales u oficinas:
	1. Cuando esté definida la distribución en planta de los locales u oficinas: una acometida (1 coaxial) por cada local u oficina.
	2. Cuando no esté definida la distribución en planta de locales u oficinas, en el registro secundario de la planta se dejará disponible una acometida (1 coaxial) por cada 100 m<sup>2</sup>.
3. Para dar servicio a estancias o instalaciones comunes del edificio: Dos acometidas (2 coaxiales) para la edificación.

Si no existen operadores de servicio se dejarán las canalizaciones necesarias para atender las previsiones del apartado anterior dotadas con los correspondientes hilos-guía.

### Dimensionamiento mínimo de la red de distribución

#### Edificaciones con una vertical

- Configuración **en estrella**: Se empleará en **edificaciones con un número de PAU no superior a 20**. En el registro principal los cables serán terminados en un conector tipo F, mientras que en los PAU se conectarán a los distribuidores de cada usuario situados en los mismos.
- Configuración en **árbol-rama**: Se empleará en **edificaciones con un número de PAU superior a 20**. La red de distribución se realizará con un único cable coaxial que saldrá del registro principal situado en el RITI y terminará en el último registro secundario. En cada registro secundario se insertará el derivador apropiado para alimentar los PAU de cada planta. En el panel de salida del registro principal, el cable coaxial que constituye la red de distribución será terminado en un conector tipo F.
#### Edificaciones con varias verticales

La red de cada vertical será tratada como una red de distribución independiente, y se diseñará, por tanto, de acuerdo con lo indicado en el apartado anterior.

### Dimensionamiento mínimo de la red de dispersión

En función de la configuración de la red de distribución, la red de dispersión se realizará:
- Configuración en estrella: Se instalarán los cables coaxiales de acometida que cubran la demanda prevista como prolongación de la red de distribución (en paso en los registros secundarios), y terminarán en el PAU de cada vivienda conectándose al distribuidor encargado de repartir la señal en la red interior de cada usuario. Es decir, los cables coaxiales pasan por los registros secundarios y continúan hasta el PAU formando una única red de distribución/dispersión.
- Configuración en árbol-rama: Se instalarán los cables coaxiales de acometida que cubran la demanda prevista, y conectándose cada uno de ellos al correspondiente puerto de derivación del derivador que actúa como punto de distribución en el registro secundario del que parten y terminarán en el PAU de cada vivienda conectándose al distribuidor encargado de repartir la señal en la red interior de cada usuario.

### Dimensionamiento mínimo de la red interior de usuario

- Viviendas: Se instalarán, y alimentarán con el correspondiente cable coaxial desde el PAU, dos registros de toma, equipados con la correspondiente toma, en dos estancias diferentes de la vivienda.
- Locales: No se instalará red interior de usuario. En este caso, el diseño y dimensionamiento de la red de cableado coaxial, así como su realización futura, será responsabilidad de la propiedad del local u oficina, cuando se ejecute el proyecto de distribución en estancias.
- Estancias comunes: El proyectista definirá el dimensionamiento de la red interior en estas estancias teniendo en cuenta la finalidad de las estancias y las prestaciones previstas para la edificación.

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