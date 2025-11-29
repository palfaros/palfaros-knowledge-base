---
title: Red coaxial
date: 2025-11-28
---
Antes de nada, creemos conveniente profundizar en un aspecto que ya se comentó en la introducción sobre la red de coaxial: la red de distribución y dispersión deben estar duplicadas. La razón para tal disposición legal hay que buscarla en las capacidades técnicas del cable coaxial y en el uso que se le pretende dar. El cable coaxial permitirá “alojar” TODAS las señales terrenas (radio FM, radio digital DAB y televisión digital TDT) pero sólo un operador de televisión satélite. Las señales terrenas son en su mayoría de libre acceso, pero aunque alguna esté codificada (como GOL-TV actualmente), deben llegar todas íntegramente a TODOS los usuarios del inmueble. La norma se redactó en un momento en que existían dos operadores de satélite activos en España (Canal Satélite Digital y Vía Digital). Entonces se planteó la doble distribución como solución que permitía convivir a ambos: a cada vivienda deberían llegar dos coaxiales, ambos deberían contener todas las señales terrenas, cada uno de ellos podría contener una plataforma digital por satélite diferente. Nótese que el servicio de satélite es opcional. Sin embargo, la doble distribución se hizo obligatoria desde el principio; ya que así se garantiza una instalación fácil y rápida en el momento que algún vecino se abone a alguna de las plataformas.

La doble distribución debe complementarse con la instalación de los dispositivos adecuados (PAU’s) a la entrada de las viviendas. Estos PAU’s deben permitir seleccionar cuál de los dos coaxiales de entrada es el activo, según a qué plataforma está abonado ese usuario.

Actualmente, sólo existe un operador de TV satélite: Digital+. Sin embargo, en la redacción de la norma de 2011 se decidió mantener la doble distribución porque el gasto extra en obra es muy bajo y una ampliación posterior sí que sería muy costosa.

Vamos a continuar definiendo, los elementos que nos vamos a encontrar en esta parte de la instalación:

## Cable coaxial

**El cable coaxial** está formado por dos conductores, un hilo interno (vivo) y un blindaje externo (muchas veces llamado malla porque en los cables comunes está formado por una malla de hilos de cobre, en cables de calidad puede ser una lámina de papel metálico o incluso un tubo sólido). Desde un punto de vista eléctrico es una línea de transmisión. Es capaz de transportar señales entre 0 Hz y 2GHz aproximadamente. La parte cercana a la continua (frecuencia cero) no suele utilizarse por su inestabilidad. En redes HFC (banda ancha por cable, no aplicable aquí) se utiliza la banda entre 5 y 65 MHz como canal de retorno. En instalaciones de RTV la banda de interés empieza en los 80 MHz (radio FM), comprende todas las frecuencias de TDT (400-694 MHz [^1]) y también entre 1 y 2 GHz (banda intermedia de satélite, esto es: la frecuencia a la que obtenemos la señal de satélite en la salida de una antena parabólica [^2]).

![[Cable_coaxial_detalle.png]]

[^1]: El rango de frecuencias de TDT fue durante mucho tiempo 470-862 MHz. En el año 2015 se liberó el espacio entre 790 y 862 (primer dividendo digital para permitir su aprovechamiento como frecuencias de telefonía móvil 4G). Con fecha límite 30 de junio de 2020, se liberaron las bandas de frecuencias entre 694 y 790 MHz(segundo dividendo digital para permitir su aprovechamiento para frecuencias de telefonía móvil 5G).
[^2]: Las antenas parabólicas disponen de un conversor situado en el foco de la parábola que traslada la señal desde la frecuencia de bajada (10.70 a 11.70GHz en banda baja u 11.70 a 12.75 GHz en banda alta) a la llamada: “frecuencia intermedia de satélite”, entre 1 y 2 GHz. La atenuación en el cable a frecuencias mayores es intolerable.

## Derivadores

**Los derivadores** permiten obtener derivaciones (ramas) a partir de la red de distribución (tronco principal). Se trata de pequeños dispositivos (generalmente construidos con circuitos de bobinas) que tienen una entrada (por la que llega la señal del cable troncal), una salida principal (que recibe la mayor parte de la potencia de entrada) y varias derivaciones (salidas que reciben una pequeña parte de la potencia de entrada). El cable troncal se interrumpe para insertar el derivador, las derivaciones se conectan a los cables de dispersión. El número de derivaciones siempre es par. En un edificio de varias plantas los derivadores se utilizan para equilibrar la instalación: en las plantas altas se usan modelos con pérdidas de derivación altas mientras que en plantas bajas las pérdidas de derivación son menores.

![[Derivadores.png]]

## Repartidores

**Los repartidores** permiten iniciar una distribución en estrella a varias tomas. Básicamente, tienen una entrada y N salidas y su trabajo es repartir equitativamente la potencia de la señal de entrada. Idealmente, un repartidor tendrá unas pérdidas de inserción (entre la entrada y cualquiera de sus salidas) de **10log<sub>10</sub>(N)** dB. En casos reales las pérdidas son un poco mayores. A veces, incluso hay salidas con pérdidas algo diferentes al resto (debido a problemas de diseño, sobre todo cuando el número de salidas es impar). Un repartidor se conecta a un cable de la red de dispersión e inicia una distribución en estrella a varias tomas cercanas y relacionadas (tomas de la misma vivienda en una ICT o tomas de la misma división en otro tipo de edificios). En las ICT’s se utilizan repartidores que tienen dos entradas y que de alguna forma nos permiten seleccionar cuál es la activa, esto es: qué señal se va a repartir en la vivienda. Esto es así debido a la obligación legal de duplicar las redes de distribución y dispersión. El repartidor de una vivienda recibirá el nombre de PAU (Punto de Acceso al Usuario) y, en el caso de RTV tendrá cuatro funciones: separar la red del usuario de la comunitaria (importante al efecto de determinar el responsable de las averías), servir de “medio de corte y punto de prueba” (para facilitar la localización de averías), repartir la señal a todas las tomas de la vivienda y, también, seleccionar entre las dos distribuciones disponibles a la entrada de la vivienda. Los fabricantes en sus catálogos hablan de “PAU-repartidores” cuando tienen dos entradas. A veces, la selección es mediante algún mando físico (clavija, tornillo); otras veces, incluso se basa en intercambiar los cables de entrada (una de las entradas conecta el cable a un terminador).

![[Repartidores.png]]

## Tomas

**Las tomas** permiten conectar un coaxial con un dispositivo de usuario (televisor, decodificador).  La mayoría tienen un pequeño repartidor interno para poder alimentar dos o tres salidas, el objetivo es poder conectar más de un servicio en la misma toma. Hay tomas dobles TV/FM y TV/SAT e incluso tomas triples TV/FM/SAT. Realmente, cuando nos hablan de “toma separadora”, debería tratarse de una toma con filtros que sólo permite el paso de las frecuencias correspondientes a cada servicio por cada una de las salidas. Esto es: si es una toma TV/SAT, la salida TV dejaría pasar hasta 862 MHz y la salida SAT permitiría a partir de 1 GHz. Ese funcionamiento produce tomas con muy pocas pérdidas (alrededor de 0.25 dB) pero puede ser incómodo para el usuario (que no entenderá muy bien por qué cada salida funciona solamente con un servicio). Por eso, la mayoría de fabricantes opta por el funcionamiento descrito al principio: repartidor interno que produce la misma señal (completa) en todas las salidas (a costa de mayores pérdidas: de 4 ó 6 dB).

![[Toma_separadora.png]]

**Tomas derivadoras o con continuidad**: permiten conectar un coaxial con un dispositivo de usuario (televisor, decodificador) y tienen una segunda salida (no visible, situada por detrás) que permite continuar la distribución hacia otra toma. Realmente se trata de derivadores con una derivación (la excepción a la regla del número de derivaciones par). Estas tomas NO se pueden utilizar en ICT’s ya que están pensadas para poner varias tomas en serie y la norma nos obliga a cablear las viviendas en estrella. Sí que se utilizan en instalaciones no sujetas a la norma cuando va a haber varias tomas seguidas: hoteles, hospitales… De todas formas debe tenerse cuidado de no acumular muchas tomas en serie y de realizar los cálculos de viabilidad pertinentes.

## Instalación RTV

Ahora, por fin, estamos preparados para aprender a afrontar el diseño de una instalación completa. Para realizar este diseño debemos seguir los siguientes pasos:
- **Ubicar las tomas**: debemos estudiar los planos del edificio y decidir donde se van a ubicar las tomas de RTV. La norma vigente pide, como mínimo, una toma por estancia computable (excluidos baños y trasteros, pero se incluye la cocina si es una estancia separada). Aunque no hay nada escrito sobre donde colocarla, lo razonable es fijarse en la distribución de mobiliario pensada por el arquitecto (que debería estar dibujada en el plano) y colocarlas en lugares razonables: frente a las camas en los dormitorios, frente a los sofás en salones y similares… También debemos saber que la norma obliga, por razones obvias, a colocarlas cerca de las tomas de red eléctrica (máximo a 50 cm de la más cercana).
- **Dibujar la instalación y calcular las distancias**: una vez ubicadas las tomas, deberemos “llegar a ellas”. Eso significa: localizar el RITS en la planta bajo-cubierta (a veces, el arquitecto lo habrá tenido en cuenta, otras veces deberemos negociar su ubicación), localizar una bajante adecuada (normalmente, habrá espacios pensados para las instalaciones de electricidad, fontanería… no está prohibido situar la bajante cerca de las cañerías pero es mejor evitarlo), localizar un registro secundario por planta, dibujar cableado desde cada registro secundario a la entrada de cada vivienda (RTR: registro de terminación de red, ahí dentro reside el PAU), finalmente dibujar cableado desde el RTR hasta las tomas. El dibujo se hará normalmente añadiendo una capa al fichero(s) en formato CAD (casi siempre AutoCAD). Debemos saber que la norma obliga a dedicar un tubo (ver capítulo 5) a la bajante de televisión, ese tubo albergará los dos coaxiales de la doble bajante. En el registro secundario tendremos dos derivadores iguales para generar las dispersiones. Los cables de dispersión irán, generalmente, dentro de tubos corrugados alojados en el suelo o por roza en la pared, SIEMPRE por zona común. A cada vivienda llegarán dos coaxiales (una de cada bajante) y el PAU seleccionará una, repartiendo además señal para todas las tomas. La acometida a cada toma se hará con tubos corrugados por el suelo o por roza en la pared. Deberemos calcular la distancia en metros de cada tramo de cable para hacer posible el cálculo de atenuaciones (normalmente las aplicaciones de CAD van a facilitar este paso).
- **Calcular la atenuación de las tomas**: ahora es momento de calcular la atenuación (en dB, por supuesto) que habrá entre la salida de la cabecera (RITS) y cada toma. Cada tramo de cable introducirá una atenuación que podremos calcular conociendo la atenuación por metro y la distancia. Cada dispositivo (derivador, repartidor, toma) introducirá atenuaciones que vienen dadas en su documentación. Debemos saber que la atenuación dependerá de la frecuencia (a mayor frecuencia, mayor atenuación) y, por tanto, calcularla para varias frecuencias. La norma no especifica cuántas frecuencias incluir en el cálculo pero una elección razonable podría ser: frecuencia central de la banda de FM (97 MHz), frecuencia central de la banda de DAB (210 MHz), frecuencia mínima de la banda de TDT (400 MHz), frecuencia máxima de la banda de TDT (862 MHz inicialmente, 694 MHz tras los dos dividendos digitales), frecuencia intermedia mínima de satélite (1 GHz), frecuencia intermedia máxima de satélite (2 GHz).
- **Comprobar la viabilidad de la instalación**: una vez se conocen las atenuaciones debemos aplicar éstas (y las recomendaciones de la norma en cuanto a niveles mínimos y máximos de señal) para calcular la amplificación necesaria en la cabecera. Este cálculo será fundamental para después diseñar la cabecera. Si la instalación no fuera viable, nos daríamos cuanta en este momento (no habría cabecera posible); en estos casos (puede ocurrir en casos muy extremos: “rascacielos”, urbanizaciones muy grandes…) es necesario cambiar la estructura: añadir amplificación intermedia, pasar a un esquema de varias cabeceras…

Para ilustrar todo lo que acabamos de decir vamos a realizar un ejemplo práctico: volvemos al edificio de C/ Gran Vía 1, Vigo (realmente para esta parte no importa la situación sino las distribución interior, esto es: los planos). Lo primero es conocer los datos generales: número de plantas, número de viviendas, locales comerciales, ¿Existe planta tipo (planta cuya distribución se repite varias veces)?, ¿Qué plantas son diferentes a la planta tipo (muchas veces, la última)?

### Ubicación registros y tomas

Vamos a hacer el diseño suponiendo una distribución ficticia pero que podría ser perfectamente real. Sencilla, eso sí, ya que es un comienzo. Supondremos una planta baja sin dividir todavía (algo muy común en muchos edificios y que nos obligará a consultar la norma para saber qué hacer), después hay 3 plantas de 3 viviendas iguales entre sí (plantas tipo) y, por último un bajo cubierta para trasteros donde no harán falta tomas pero donde se ha alojado el RITS.

El plano de la planta tipo, al que ya hemos añadido el diseño de infraestructura de RTV es el siguiente:

![[Plano_planta_tipo.png]]

Aproximadamente en el centro, en una pared común que rodea al ascensor vemos representados dos pequeños espacios que corresponden a pozos de servicio que atraviesan todas las plantas de la edificación para poder llevar los servicios necesarios: electricidad, telecomunicaciones… En uno de esos espacios colocamos el Registro Secundario (RS) que, según la norma, deberá estar cerrado con llave y tener al menos 150 mm de profundidad. Después, unimos ese RS con los tres Registros de Terminación de Red (RTR’s) que situamos en la pared divisoria de cada vivienda con la zona común. Normalmente, será cerca de la puerta de entrada (como en este caso) pero eso no es obligatorio. El RTR abre sin llave pero por dentro de la vivienda. Cada RTR debemos unirlo a todas las tomas de su vivienda. La toma formalmente se conoce como registro de toma o BAT (Base de Acceso Terminal). Nótese que se ha colocado una toma por estancia (mínimo de la norma), no cuentan baños ni trasteros y, aquí, la cocina tampoco porque no está separada del salón. En todo el diseño hemos supuesto que se utilizan tubos corrugados de plástico que se instalarán por el suelo, encima de la placa y debajo del azulejo o *parquet*. Al llegar a una toma o registro deberá hacerse una pequeña roza vertical en la pared.

### Cálculo de distancias

A partir del plano (y de la escala) calculamos las distancias:

- Entre el RS y los RTR’s: 2.10 m hasta la vivienda situada en la parte superior del plano, 2 m hasta la vivienda inferior izquierda y 2.80 m hasta la vivienda inferior derecha.
- Dentro de la vivienda superior: 2 m del RTR al salón, 9.30 m hasta el dormitorio principal y 8 m hasta el dormitorio pequeño.
- Dentro de la vivienda inferior izquierda: 0.20 m hasta la toma del salón, 12.30 m hasta el dormitorio principal y 8.10 hasta el dormitorio pequeño.
- Dentro de la vivienda inferior derecha: 0.10 m hasta la toma del salón, 10.80 m hasta el dormitorio principal y 9.40 m hasta el dormitorio pequeño.

### Elección de dispositivos

#### Derivaciones

Con estos datos apuntados vamos a elegir dispositivos para nuestra infraestructura (realmente sólo hemos dibujado canalizaciones y registros). El primer paso, ahora, es elegir **derivadores**. Como decíamos al principio del apartado: “En un edificio de varias plantas los derivadores se utilizan para equilibrar la instalación”. Eso significa que en las plantas altas se usan modelos con pérdidas de derivación altas mientras que en plantas bajas las pérdidas de derivación son menores. Para realizar esto hay varios métodos (incluso existe software de optimización) pero lo más simple (y que nos da soluciones correctas) es seguir las recomendaciones del fabricante. Si vemos la tabla que describe los derivadores de Televés con cuatro derivaciones (deben ser con 4 porque no existen derivadores con número par de derivaciones y tenemos tres viviendas por planta):

![[Televés_Derivadores_4D_Specs.png]]

La segunda fila de la tabla nos indica la planta recomendada para cada modelo. Teniendo cuidado porque la planta 1 se refiere al bajo (o, mejor dicho, al último registro secundario). Por tanto en el bajo deberíamos colocar un 5444.

Decíamos que el bajo estaba sin dividir (si la obra no ha empezado eso pasará muchas veces: no se conoce la división o aunque se conozca no se sabe qué negocios se instalarán ni su distribución particular), un 5444 nos permite hasta 4 locales (4 salidas). ¿Está eso bien? La norma prevé lo siguiente:

*Cuando no esté definida la distribución de la planta en locales u oficinas, en el registro secundario que dé servicio a dicha planta se colocará un elemento o elementos de distribución, con capacidad para dar servicio a un número de PAU que, como mínimo será igual al número de viviendas de la planta tipo de viviendas de la edificación.*

Por tanto vemos que la elección del 5444 es correcta. Para acabar de ilustrar este inciso, comentamos que cuando se prevea división de la zona de locales pero no la distribución de los mismos, deberemos proyectar registros de terminación de red y PAU’s (en el interior de los mismos).

Continuando con las recomendaciones del fabricante, proyectaremos un modelo 5445 para las plantas primera y segunda (2 y 3 en la tabla) y un 5446 en la tercera planta (4 en la tabla).

Por último, nótese que en cada RS realmente tendremos dos derivadores iguales debido a que la distribución de RTV estará duplicada.

#### PAUs

Ahora debemos elegir un **PAU para el interior de cada RTR**. De nuevo recurrimos al catálogo de Televés, donde tenemos los siguientes “PAU-repartidores”:

![[Televés_PAU-repartidores_Specs.png]]

Debemos tener como mínimo 3 salidas, el 5151 sería correcto pero, en previsión de algún crecimiento, podemos elegir el 5152 que nos sirve para todas las viviendas (9 viviendas en total).

#### Tomas (BATs)

Respecto a las **tomas**, tenemos la siguiente tabla:

![[Televés_BAT_Tomas_Specs.png]]

Podemos ver que la toma 5226 tiene pérdidas muy bajas pero también vemos que tiene dos salidas (TV y SAT) que proporcionan señales separadas: en la salida TV no hay señal de satélite y en la salida SAT no hay señal de TDT (podemos verlo porque no nos dan dato de pérdida para estos casos). En este caso es más recomendable la toma 5229 que será más cómoda para el usuario. El resto son tomas con continuidad y no se deben utilizar en una distribución en estrella.

#### Cable

**La última elección (o la primera, realmente no importa el orden) es la del cable coaxial**. Disponemos de una tabla con características:

![[Televés_Cable_Specs.png]]

Elegiremos el modelo más común T100, 2141. Vemos que casi todos los T-100 ofrecen las mismas pérdidas (iguales características eléctricas) porque la diferencia está en la cubierta. El 2141 tiene una cubierta normal para interiores. En algunos casos podemos necesitar utilizar el cable con cubierta de exteriores: 2155. Existen otros cables con menores pérdidas pero no suelen ser necesarios en circunstancias normales.

#### Esquema instalación

Una vez realizadas estas elecciones (o simultáneamente a las mismas) deberíamos realizar un esquema de la instalación:

![[Esquema_instalación.png]]

Donde vemos todos los datos que hemos ido recopilando y también la distancia vertical entre cada dos registros secundarios. En este caso la consideramos constante e igual a 3 m.

Otros detalles interesantes de la figura: 
- Vemos la doble bajante.
- Cómo cada PAU tiene dos entradas aunque sólo una esté activa y, por último
- Cómo cada salida que no es utilizada se “completa” con un terminador (resistencia de 75 Ω, que asegura la ausencia de rebotes de señal).

### Cálculo atenuaciones

Vamos ahora a detallar el proceso de cálculo. Vamos a calcular la atenuación desde la cabecera hasta todas las tomas sólo para dos frecuencias: los extremos de la banda de TDT (400 y 862 MHz). El cálculo para otras frecuencias se haría exactamente igual, teniendo en cuenta que la atenuación del cable cambia y, tal vez, también cambie la de los dispositivos (derivadores, repartidores, tomas…).

Comenzando el cálculo, vamos a la tabla mostrada en [[#Cable]] y descubrimos que, para la frecuencia de 400 MHz, la atenuación es de 0.12 dB/m (el valor listado es para 500 MHz pero lo tomamos porque es el más cercano). Para hacer el cálculo de atenuaciones vamos a “ir descendiendo” desde la cabecera y sumando los dB’s que correspondan. Para llegar a la entrada del primer derivador (planta 3) tenemos que recorrer 3m de cable, por tanto:

$$
A_{hasta\ entrada\ derivador\ P3} (dB)= 3 m · 0.12 dB/m = 0.36 dB
$$

En las derivaciones de dicho derivador tendremos una mayor atenuación, habrá que sumar la “atenuación en derivación”. Esa podemos verla en la tabla mostrada en [[#Derivaciones]] y es de 20 dB (debemos centrarnos en la columna del 5446, se trata de la atenuación IN-D1/D2/D3/D4 o “atenuación en derivación”, y para la frecuencia que nos ocupa). Por tanto:

$$
A_{hasta\ salida\ derivador\ P3} (dB)= A_{hasta\ entrada\ derivador\ P3} (dB) + 20 dB = 0.36 dB + 20 dB = 20.36 dB
$$

Vamos viendo que la componente principal se suele deber al derivador de esa planta. Ojo, para continuar hacia abajo hay que utilizar la atenuación “por inserción” o “de paso” de este mismo derivador (IN-OUT en la tabla). Ahora continuamos hacia la vivienda de la izquierda (en el esquema, en el plano es la superior). Nos faltan 2.10 m de cable hasta el PAU:

$$
A_{emtrada\ PAU,\ vivienda\ A,\ P3} (dB)= A_{hasta\ salida\ derivador\ P3} (dB) + 2.10 m · 0.12 dB/m = 20.36 dB + 0.252 dB = 20.61 dB
$$

Ahora hay que aplicar la atenuación que va a introducir el PAU que, realmente, es un repartidor y atenúa la señal. Consultamos la tabla mostrada en [[#PAUs]] y vemos que vale 7.5 dB. Debemos saber que “MATV” se refiere a todas las señales terrenas (radio y TV) mientas que “FI” se refiere a la señal de satélite. A la salida del PAU tendremos:

$$
A_{salida\ PAU,\ vivienda\ A,\ P3} (dB)= A_{entrada\ PAU,\ vivienda\ A,\ P3} (dB) + 7.5 dB = 20.61 dB + 7.5 dB = 28.11 dB
$$

Para llegar hasta la toma 1 (salón), deberemos recorrer 2 m de cable. Además la toma 5229 introducirá una pérdida de 4 dB (tabla mostrada en [[#Tomas (BATs)]]). Esa pérdida tan grande se debe a que realmente hay un repartidor interno que permite utilizar los dos conectores indistintamente. Tendremos finalmente:

$$
A_{toma\ 1,\ vivienda\ A,\ P3} (dB)= A_{salida\ PAU,\ vivienda\ A,\ P3} (dB) + 2 m · 0.12 dB/m + 4 dB = 28.11 dB + 0.24 dB + 4 dB = 32.35 dB
$$

Ahora habría que continuar, de forma ordenada, hasta todas las tomas. Un método fácil es utilizar una hoja Excel.

![[Excel_planta_3.png]]

Vemos que, de momento, nos salen números muy parecidos en todas las tomas. Eso es bueno, significa que tenemos una instalación equilibrada. Continuando con todo el edificio obtenemos todas las atenuaciones necesarias, que se muestran en la siguiente tabla.

|                      |                       |                           |                           |
| -------------------- | --------------------- | :-----------------------: | :-----------------------: |
|                      |                       | **Frecuencia  (400 MHz)** | **Frecuencia  (862 MHz)** |
| **Planta 3:**        |                       |                           |                           |
| **Vivienda A (P3):** |                       |                           |                           |
|                      | **Toma 1, V(A), P3:** |         32.35 dB          |         32.57 dB          |
|                      | **Toma 2, V(A), P3:** |         33.23 dB          |         33.66 dB          |
|                      | **Toma 3, V(A), P3:** |         33.07 dB          |         33.47 dB          |
| **Vivienda B (P3):** |                       |                           |                           |
|                      | **Toma 1, V(B), P3:** |         32.12 dB          |         32.28 dB          |
|                      | **Toma 2, V(B), P3:** |         33.58 dB          |         34.10 dB          |
|                      | **Toma 3, V(B), P3:** |         33.07 dB          |         33.47 dB          |
| **Vivienda C (P3):** |                       |                           |                           |
|                      | **Toma 1, V(C), P3:** |         32.21 dB          |         32.39 dB          |
|                      | **Toma 2, V(C), P3:** |         33.49 dB          |         33.99 dB          |
|                      | **Toma 3, V(C), P3:** |         33.32 dB          |         33.78 dB          |
| **Planta 2:**        |                       |                           |                           |
| **Vivienda A (P2):** |                       |                           |                           |
|                      | **Toma 1, V(A), P2:** |         31.31 dB          |         31.62 dB          |
|                      | **Toma 2, V(A), P2:** |         32.19 dB          |         32.71 dB          |
|                      | **Toma 3, V(A), P2:** |         32.03 dB          |         32.52 dB          |
| **Vivienda B (P2):** |                       |                           |                           |
|                      | **Toma 1, V(B), P2:** |       **31.08 dB**        |         31.33 dB          |
|                      | **Toma 2, V(B), P2:** |         32.54 dB          |         33.15 dB          |
|                      | **Toma 3, V(B), P2:** |         32.03 dB          |         32.52 dB          |
| **Vivienda C (P2):** |                       |                           |                           |
|                      | **Toma 1, V(C), P2:** |         31.17 dB          |         31.44 dB          |
|                      | **Toma 2, V(C), P2:** |         32.45 dB          |         33.04 dB          |
|                      | **Toma 3, V(C), P2:** |         32.28 dB          |         32.83 dB          |
| **Planta 1:**        |                       |                           |                           |
| **Vivienda A (P1):** |                       |                           |                           |
|                      | **Toma 1, V(A), P1:** |         33.97 dB          |         34.37 dB          |
|                      | **Toma 2, V(A), P1:** |         34.85 dB          |         35.46 dB          |
|                      | **Toma 3, V(A), P1:** |         34.69 dB          |         35.27 dB          |
| **Vivienda B (P1):** |                       |                           |                           |
|                      | **Toma 1, V(B), P1:** |         33.74 dB          |         34.08 dB          |
|                      | **Toma 2, V(B), P1:** |         35.20 dB          |       **35.90 dB**        |
|                      | **Toma 3, V(B), P1:** |         34.69 dB          |         35.27 dB          |
| **Vivienda C (P1):** |                       |                           |                           |
|                      | **Toma 1, V(C), P1:** |         33.83 dB          |         34.19 dB          |
|                      | **Toma 2, V(C), P1:** |         35.11 dB          |         35.79 dB          |
|                      | **Toma 3, V(C), P1:** |         34.94 dB          |         35.58 dB          |
En la tabla anterior se han resaltado en negrita dos valores muy importantes: la atenuación máxima y mínima. Como sería de esperar, el mínimo corresponde a la menor frecuencia. Sin embargo, puede parecer una paradoja que el mínimo esté en la segunda planta y no en la más alta (más cerca de la cabecera). Este hecho es muy común y se debe a la gran atenuación en derivación de los derivadores de plantas altas. El dato realmente más importante, el que determina la viabilidad de la instalación, es la diferencia entre ellas. En este caso esa diferencia es baja (menor a 5 dB) dándonos una instalación bastante equilibrada. Ahora veremos cómo calcular el nivel de señal que debe proporcionar la cabecera y, de paso, sabremos si es viable.

La norma nos obliga a que en cada toma de TDT tengamos un nivel de señal entre 47 y 70 dBμV. vamos a calcular los niveles de señal en cabecera que aseguran el cumplimiento de esa norma:

- Para que siempre estemos por encima de 47 dBμV, la cabecera deberá **COMO MÍNIMO**, producir ese nivel en la **PEOR TOMA**. Por tanto, el nivel en cabecera, debe cumplir la desigualdad L<sub>cab</sub> ≥ L<sub>min</sub> + AT<sub>max</sub> = 47 + 35.90 = 82.90 dBμV.
- Para que siempre estemos por debajo de 70 dBμV, la cabecera deberá **COMO MÁXIMO**, producir ese nivel en la **MEJOR TOMA**. Por tanto, el nivel en cabecera, debe cumplir la desigualdad L<sub>cab</sub> ≤ L<sub>max</sub> + AT<sub>min</sub> = 70 + 31.08 = 101.08 dBμV.

Obviamente, este rango recién calculado es fundamental para el diseño de cabecera (recuérdese que lo habíamos dejado pendiente. Además de eso, podemos ver que nos ha dado un rango VIABLE, esto es: L<sub>cab</sub>(min) < L<sub>cab</sub>(max). No es difícil demostrar que si la diferencia entre la atenuación máxima y la mínima fuese mayor a 23 dB (70-47=excursión permitida en una toma) nos hubiese salido un rango imposible. En estos casos es cuando decimos que la instalación no es viable. Una instalación no viable puede aparecer cuando tenemos distribuciones muy grandes y para llegar a tener el valor mínimo permitido en la peor toma, necesitamos una salida tan alta que empezamos a saturar otras tomas de menor atenuación. En estos casos hay que cambiar el diseño. La solución más habitual suele ser introducir amplificación intermedia en algún registro secundario (amplificación de línea). Para evitar problemas de intermodulación no deberíamos tener más de dos amplificaciones de línea en la misma distribución.

Nótese que la salida calculada para la cabecera es ESO: “salida de la cabecera”, no la salida del amplificador. Muchas veces después de la amplificación hay un repartidor necesario para producir la doble distribución. En ese caso, si el repartidor pierde 4 dB, la amplificación deberá compensarlo.
