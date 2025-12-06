---
title: Red de fibra óptica
date: 2025-12-06
---
Se trata del nuevo medio para redes de banda ancha y TV (FTTH).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre las redes de alimentación de los operadores del servicio y la de distribución de la ICT del inmueble.

![[Punto_interconexión_red_fibra_óptica.png]]

Para el caso de redes de alimentación constituidas por cables de fibra óptica, sus fibras deberán estar terminadas en conectores tipo SC/APC con su correspondiente adaptador, agrupados en un repartidor de conectores de entrada, que hará las veces de panel de conexión o regleta de entrada.

Todas las fibras ópticas de la red de distribución se terminarán en conectores tipo SC/APC con su correspondiente adaptador, agrupados en un panel de conectores de salida, común para todos los operadores del servicio.

La conexión entre el panel común de conectores de salida de la red del edificio y los repartidores de conectores de entrada de los diferentes operadores, se realizará mediante cordones o latiguillos de fibra óptica terminados en ambos extremos en conectores de tipo SC/APC.

![[Conector_SC-APC.png]]

Los repartidores de conectores de entrada de todos los operadores y el panel común de conectores de salida, estarán situados en el registro principal óptico ubicado en el RITI o RITU. El espacio interior previsto para el registro principal óptico deberá ser suficiente para permitir la instalación de una cantidad de conectores de entrada que sea dos veces la cantidad de conectores de salida que se instalen en el punto de interconexión, así como un espacio adicional para el guiado de los cordones o latiguillos de interconexión y el almacenamiento de la longitud sobrante de cable.

![[Regleta_conexión_fibra_óptica.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT del inmueble. Para la fibra se distinguen dos casos:
- Cuando las fibras ópticas de la red de distribución sean distintas de los cables de acometida de fibra óptica de la red de dispersión, el punto de distribución estará formado por una o varias cajas de segregación en las que terminarán ambos tipos de fibras. En cada caja de segregación se almacenarán los empalmes entre las fibras ópticas de distribución y las de las acometidas. En cualquier caso, en el punto de distribución se almacenarán bucles de fibra óptica con la holgura suficiente para poder reconfigurar las conexiones entre las fibras ópticas de la red de distribución y las de la red de dispersión (cortar y empalmar o conectar).
- Cuando las fibras ópticas de las acometidas de la red de dispersión sean las mismas fibras ópticas de los cables de la red de distribución, dichas fibras estarán en paso en el punto de distribución. El punto de distribución estará formado por una o varias cajas de segregación en las que se dejarán almacenados, únicamente, los bucles de las fibras ópticas de reserva, con la longitud suficiente para poder llegar hasta el PAU más alejado de esa planta. Los extremos de las fibras ópticas de la red de dispersión se identificarán mediante etiquetas que indicarán los puntos de acceso al usuario a los que dan servicio. El diseño, dimensionado e instalación de los puntos de distribución será responsabilidad de la propiedad de la edificación.

![[Punto_distribución_fibra_óptica.png]]

### Punto de acceso al usuario (PAU)

Realiza la unión entre la red de dispersión y la red interior de usuario de la ICT del inmueble

El punto de acceso al usuario (PAU) estará formado por:
- La roseta con tantos conectores SC/APC (y los correspondientes adaptadores) de terminación como fibras ópticas de los cables de acometida se hayan instalado en la red de dispersión.
- La unidad de terminación de red óptica que se conectará por una parte a la roseta descrita en el párrafo anterior y, por otra, a la red interior de usuario de la ICT. Esta unidad de terminación será la que proporcione al usuario final los puntos de acceso a los diferentes servicios, con sus facilidades simultáneas como “medio de corte” y “punto de prueba”.

**La red de interior de usuario será de pares trenzados, salvo en la estancia principal (salón) que se instalará una acometida de fibra óptica**. En los extremos de las diferentes ramas de la red interior de usuario de pares trenzados, ubicados en el registro de terminación de red, se equiparán conectores macho miniatura de ocho vías (RJ45); en estos extremos se dejará una longitud de cable sobrante con la suficiente holgura como para llegar a cualquiera de las partes interiores de los diferentes compartimentos del registro de terminación de red. Estos mismos extremos se identificarán mediante etiquetas que indicarán la ubicación del conector de las bases de acceso de terminal (BAT) a las que dan servicio.

Asimismo, para que exista una continuidad entre las regletas de salida del punto de interconexión y algunas de las bases de acceso de terminal (BAT) de la red interior de usuario de pares trenzados, se instalará en el registro de terminación de red un accesorio multiplexor pasivo que, por una parte, estará equipado con un latiguillo flexible terminado en un conector macho miniatura de ocho vías, enchufado a su vez en un conector o roseta de terminación de una de las líneas de la red de dispersión y, por otra parte, tenga como mínimo tantas bocas hembra miniatura de ocho vías (RJ45) como estancias servidas por la red interior de usuario de pares trenzados.

|                                                |                                        |                                              |                                                                      |
| ---------------------------------------------- | -------------------------------------- | -------------------------------------------- | -------------------------------------------------------------------- |
| Realización del Punto de Acceso al Usuario<br> |                                        |                                              |                                                                      |
|                                                | Medio portador en la Red de dispersión | Medio portador en la Red interior de usuario | Elementos adaptadores en el PAU                                      |
|                                                | Cable de F.O                           | Cables trenzados                             | Roseta óptica ONT Switch Multiplexor pasivo<br>Conectores macho RJ45 |

### Bases de acceso terminal (BAT))

Como es el caso del cableado de pares trenzados, los hilos conductores de cada rama de la red interior se conectarán a los 8 contactos del conector RJ-45 hembra miniatura de 8 vías de la BAT en que terminen.

Además en relación a la toma de fibra óptica ubicada en la estancia principal, la fibra se terminará en un BAT de fibra óptica con adaptador de tipo SC/APC.

## Esquema general

La siguiente imagen muestra un esquema general de una red de cables de fibra óptica.

![[Esquema_red_cables_fibra_óptica.png]]

La siguiente imagen muestra un esquema general de la ubicación de elementos en el Registro de Terminación de red.

![[Esquema_ubicación_elementos_RTR.png]]

## Diseño y dimensionamiento de red

### Previsión de la demanda

Para que la red interior sea capaz de atender la demanda a largo plazo del inmueble, se realizará una evaluación de las necesidades. Se aplicarán las normas siguientes

Cada acometida óptica estará constituida por dos fibras ópticas.

1. Viviendas: Se considerará **1 acometida óptica por cada vivienda**.
2. En el caso de locales u oficinas en edificaciones de viviendas:
	1. Cuando esté definida la distribución en planta de los locales u oficinas, se considerará **1 acometida óptica por cada local u oficina**.
	2. Cuando no esté definida la distribución en planta de los locales u oficinas, en el registro secundario de la planta (o en el RITI en el caso de edificaciones con un número de PAU inferior a 15) se dejará disponible **1 acceso o acometida óptica por cada 100 m<sup>2</sup> o fracción**.
3.  En el caso de locales u oficinas en edificaciones destinadas fundamentalmente a este fin:
	1. Cuando esté definida la distribución en planta de los locales u oficinas, se considerarán **2 acometidas ópticas por cada local u oficina.**
	2. Cuando no esté definida la distribución en planta de los locales u oficinas, se considerarán **2 acometidas ópticas por cada 100 m<sup>2</sup> o fracción**.
4.  Para dar servicio a estancias o instalaciones comunes del edificio: 2 acometidas ópticas para la edificación. Se excluye de las estancias comunes el ascensor.
5. Ascensores. (en función de su normativa específica).

Si en el proyecto no se instala el cableado de fibra óptica, se dejarán las canalizaciones necesarias para atender las previsiones del apartado anterior dotadas con los correspondientes hilos-guía.

### Dimensionamiento mínimo de la red de distribución

#### Edificaciones con una vertical

Conocida la necesidad futura a medio y largo plazo, tanto por plantas como en el total de la edificación, o estimada dicha necesidad según lo indicado en el apartado anterior, se dimensionará la red de distribución con arreglo a los siguientes criterios:

- La cifra de demanda prevista se multiplicará por el factor 1,2 lo que asegura una reserva suficiente para prever posibles averías de algunas fibras ópticas o alguna desviación por exceso sobre la demanda prevista.
- Obtenido de esta forma el número teórico de fibras ópticas necesarias, se utilizará el cable multifibra normalizado de capacidad igual o superior a dicho valor o combinaciones de varios cables normalizados, teniendo también en cuenta la técnica de instalación que se vaya a utilizar para la extracción de las fibras ópticas correspondientes a cada registro secundario.

Las fibras sobrantes, distribuidas de manera uniforme en los diferentes registros secundarios, quedarán disponibles correctamente alojadas en los mismos, para su utilización en el momento apropiado.

En el caso de edificios con una red de distribución/dispersión que dé servicio a un número de PAU inferior o igual a 20, la red de distribución/dispersión podrá realizarse con cables de acometida de dos fibras ópticas directamente desde el punto de distribución ubicado en el registro principal. De él saldrán, en su caso, los cables de acometida que subirán a las plantas para acabar directamente en los PAU.

Para el caso de edificios con una red de distribución/dispersión que dé servicio a un número de PAU superior a 20, la red de distribución/dispersión podrá realizarse también con cables de acometida de dos fibras ópticas directamente desde el punto de distribución ubicado en el registro principal, siempre y cuando la canalización principal que se diseñe lo permita, y así quede justificado en el proyecto.
#### Edificaciones con varias verticales

La red de cada vertical será tratada como una red de distribución independiente, y se diseñará, por tanto, de acuerdo con lo indicado en el apartado anterior.

### Dimensionamiento mínimo de la red de dispersión

Se instalarán tantos cables de fibra óptica de acometida como resulten necesarios para cubrir la demanda prevista en cada vivienda o local, y terminarán en el PAU de cada vivienda en la roseta correspondiente. El empalme o continuidad de paso de estas fibras ópticas en los puntos de distribución, se realizará según lo indicado en el apartado de [[#Previsión de la demanda]].

### Dimensionamiento mínimo de la red interior de usuario

En este caso, la red interior de usuario **se realizará con cable de pares trenzados, salvo en la estancia principal (salón) que se instalará una acometida de fibra óptica**, de acuerdo a lo siguiente:
- Viviendas: En la **estancia principal de las viviendas (salón)**, próxima al registro BAT de pares trenzados con dos tomas, **se dispondrá una roseta de fibra óptica o BAT de fibra óptica, terminado con un adaptador SC/APC**. Este adaptador estará alimentado con una acometida de fibra óptica que terminará en un conector SC/APC conectado a uno de los adaptadores SC/APC de la roseta de fibra óptica situada en el PAU. El cable de fibra óptica individual para instalación en la red interior de usuario será de 1 **fibra óptica**. El resto de la red interior de usuario se realizará con cable de pares trenzados y su dimensionamiento será similar a la red de pares trenzados, esto es: En la estancia principal (salón) el número de registros de toma equipados con BAT será de dos como mínimo. En uno de ellos se equipará BAT con dos tomas o conectores hembra alimentados por acometidas de pares trenzados independientes procedentes del PAU, pudiendo ser soportadas por canalizaciones independientes si lo requiere la ubicación elegida de las tomas. Una de éstas deberá situarse a menos de 50 centímetros de la toma de fibra óptica. En el resto de estancias, excluidos baños y trasteros, se dispondrá de registro de toma equipado con BAT. Como mínimo, en otra de las estancias, en el registro de toma, se equipará BAT con dos tomas o conectores hembra, alimentadas por acometidas de pares trenzados independientes procedentes del PAU, de las mismas características que el indicado para la estancia principal. Cada una de las tomas dobles mencionadas en este párrafo se podrá sustituir por dos tomas simples.
- Locales u oficinas, cuando esté definida su distribución interior en estancias: El número de **registros de toma será de uno por cada estancia**, excluidos baños y trasteros, **equipados con BAT con dos tomas o conectores hembra**, alimentadas por acometidas de pares trenzados independientes procedentes del PAU.
- Locales u oficinas, cuando no esté definida su distribución en planta: **No se instalará red interior de usuario**. En este caso, el diseño y dimensionamiento de la red interior de usuario, así como su realización futura, será responsabilidad de la propiedad del local u oficina, cuando se ejecute el proyecto de distribución en estancias.
- Estancias o instalaciones comunes del edificio: El proyectista definirá el dimensionamiento de la red interior en estas estancias teniendo en cuenta la finalidad de las estancias y las prestaciones previstas para la edificación.

![[Esquema_red_usuario_red_fibra.png]]

### Particularidades de los conjuntos de viviendas unifamiliares

En el caso de viviendas unifamiliares, se utilizará un RITU, donde se ubicarán los paneles de entrada. La red de distribución será similar a la ya indicada, con la singularidad de que el recorrido vertical de los cables se transformará en horizontal

Los puntos de distribución podrán ubicarse en la medianería de dos viviendas, de manera alterna, de tal forma que, desde cada punto, se pueda prestar servicio a ambas.

Cuando el número de PAU a los que da servicio la red de distribución/dispersión sea inferior o igual a 15, la red de distribución/dispersión podrá realizarse con cables de acometida de dos fibras ópticas directamente desde el punto de distribución ubicado en el recinto de instalaciones de telecomunicaciones. De él saldrán, en su caso, los cables de acometida (interior o exterior) hasta el PAU de cada vivienda.

### Cálculo de atenuaciones

El R.D. establece un valor de atenuación máxima recomendada de la red de distribución y dispersión no superior a 1,55 dB. En ningún caso superior a 2 dB.

Las medidas se realizarán desde las regletas de salida de fibra óptica, situadas en el registro principal óptico del RITI, hasta los conectores ópticos de la roseta de los PAU situada en el registro de terminación de red de cada vivienda, local o estancia común.

En la especificación de los materiales solo se especifica el nivel de atenuación de los conectores.

En caso de empalme de fibras este puede ser realizado por fusión o por medio mecánico. El método de fusión requiere la utilización de herramientas especiales de las que debe disponer el instalador. El método de empalme mecánico no requiere de dichas herramientas, pero su atenuación es mayor que la del empalme de fusión.

A priori se desconoce el equipamiento de que puede disponer el instalador por lo que cabe pensar que los empalmes van a ser realizados por medios mecánicos (se obtendrá un valor de atenuación mayor que si se realizara por fusión).

En cualquiera de los casos la atenuación de los empalmes depende de la calidad del mismo por lo que, al realizar los cálculos nos situaremos en el peor de los casos para que, si garantizamos la atenuación en el peor de los casos, cualquier mejora en la calidad de éstos dará un mejor resultado final.

- Distribución en estrella: En el caso de red en estrella, la atenuación será la del cable más la de un conector SC/APC, el situado en el extremo del Punto de Interconexión.
- Distribución en árbol-rama: En este caso se realizará un empalme entre las fibras de la red de la distribución con las fibras de la red de dispersión situando el mismo en la caja de segregación instalada en el Registro Secundario de planta.

Como valores típicos, tenemos los siguientes:

|                    |                     |
| :----------------: | :-----------------: |
|      Elemento      |     Atenuación      |
|  Conector SC/APC   |    0,2 - 0,3 dB     |
|   Cable de F.O.    | 0,40 dB/km @1310 nm |
| Empalme por fusión |   0,03 - 0,05 dB    |
|  Empalme mecánico  |    0,06 - 0,2 dB    |
