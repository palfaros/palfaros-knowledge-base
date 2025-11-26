---
title: Elementos de captación
date: 2025-11-24
---
Los elementos de captación en este servicio serán, por supuesto, antenas y deberemos colocarlas en una posición elevada: terraza o mástil colocado en el tejado sobre alguna zapata (plataforma), que debe diseñar el arquitecto.

La razón de elegir una posición elevada es salvar, en la medida de lo posible los obstáculos del entorno: otros edificios, obstáculos naturales… Además, debemos saber que, cuánto más arriba estemos, mejor cobertura de todos los servicios vamos a tener. En urbanizaciones puede no ser posible lograr una posición muy elevada pero, al menos, debemos intentar que no haya obstáculos.

Un sistema de captación normalmente consta de dos mástiles: uno para antenas de recepción terrena y otro (opcional) para satélite (antena parabólica). La norma admite hasta dos antenas parabólicas (dos satélites) pero eso, hoy día (con un único operador de TV satélite activo), es muy raro.

Para recibir las señales terrenas necesitaremos, en principio, tres antenas:
- **Una antena de TV (TDT)**. Se trata de antenas directivas, que deberemos apuntar hacia el centro emisor más cercano.
- **Una antena para la radio FM**. Son antenas omnidireccionales y no es necesario apuntarlas.
- **Una antena para la radio digital DAB**. Son directivas. Actualmente, existen antenas mixtas TDT-DAB que aprovechan el hecho de que los centros emisores son comunes para ambos servicios. El servicio DAB apenas es utilizado pero es obligatorio contemplarlo.

A continuación se muestran, de izquierda a derecha: antena TDT, antena FM y antena DAB.

![[Antenas_TDT_FM_DAB.png]]

La siguiente imagen muestra una antena mixta (TDT+DAB).

![[Antena_Mixta_TDT_DAB.png]]

## Diseño de elementos de captación

### TDT, FM y DAB

Vamos a realizar un ejemplo de diseño de un mástil completo. Debemos suponer una ubicación concreta: por ejemplo, en C/ Gran Vía 1, Vigo. Primero debemos localizar el centro emisor de TDT (y DAB) más adecuado. Conociendo el código postal de la ubicación (36204) podemos recurrir a la página [television.digital.gob.es](https://television.digital.gob.es/Paginas/Index.aspx) y pulsar en “Consulta de Cobertura TDT”. Esa consulta nos indica (como ya saben todos los proyectistas e instaladores de la zona) que debemos apuntar al centro de Monte Faro (parroquia de Domayo, Moaña, Pontevedra). 

La siguiente imagen muestra el resultado de la consulta de cobertura, donde vemos que nos informa de los canales disponibles, además de los centros emisores posibles. Lavadores es un centro secundario y en la ubicación dada (casi frente al mar) se tiene muy buena visión directa del centro de Domayo (Pontevedra). Por supuesto, esta última información sólo se puede tener conociendo un poco la zona. La mejor fuente de información puede ser consultar con algún instalador.

![[Emisores_TDT_Vigo.png]]

Las coordenadas geodésicas del centro emisor de Domaio son 42.31º N y 8.70º W. Colocando ambas ubicaciones sobre un mapa, sabremos el ángulo necesario para el apuntamiento de la antena.

![[Apuntamiento_Vigo_Domaio.png]]

Con ayuda de la figura, determinamos que deberíamos apuntar con un ángulo de 6.18° desde el norte y girando en sentido horario (en este caso se ha calculado de forma elemental: midiendo las distancias en píxeles sobre la imagen digital y utilizando trigonometría básica). Nótese la importancia de especificar bien desde donde se debe medir el ángulo. Obviamente, en estos casos el uso de figuras es muy recomendable. Nótese también que este es un valor aproximado y que el instalador realizará ajustes in situ con ayuda de equipos de medida (preferentemente con un medidor de campo que le permitirá saber la intensidad de las señales e incluso sintonizarlas y ver/escuchar las emisiones).

Resuelto el tema del apuntamiento, debemos decidir la disposición de las antenas en el mástil. Si vamos a utilizar una antena mixta (TDT+DAB) sólo tenemos dos antenas. La norma de 2003 pedía que las antenas tuvieran al menos 1 metro de separación en el mástil; esa disposición ha desaparecido de la nueva norma, sin embargo podemos tomarla como recomendación importante. Otra recomendación es que la antena de mayor frecuencia vaya en la posición superior. En estas condiciones, podemos proyectar un mástil de 1.5 m con la antena TDT+DAB (mayor frecuencia) en el extremo superior y la antena de FM 1 m por debajo (a 0.5 m de la base). **¿Será esa configuración posible?**

Para responder a esa pregunta debemos realizar un cálculo mecánico: la resistencia al viento. Debemos calcular el momento flector total para el viento máximo que establece la norma: para un edificio de más de 20 m sobre el suelo (lo más habitual), deberemos soportar 150 Km/h. Podemos suponer que esa velocidad es equivalente a una presión de 1100 N/m2. Para calcular el momento flector total calcularemos:
- El del propio mástil: conociendo su diámetro (45 mm) y su altura (1.5 m), resulta que opone al viento una superficie de 0.068 m<sup>2</sup>. La fuerza que ejerce el viento sobre él es, por tanto: 1100 N/m<sup>2</sup> x 0.068 m<sup>2</sup> = 74.25 N que supondremos aplicados en el centro del mástil. Por tanto el momento flector (respecto a la base que es el punto de rotura más probable) será de: 74.25 N · 0.75 m = 55.68 N·m.
- El de la antena TDT+DAB: el fabricante debe medir la fuerza que ejercerá esta velocidad de viento sobre sus antenas (carga al viento de la antena). Para el modelo DAT 790 ([www.televes.es](http://www.televes.es/)), ese valor es de: 165 N. Colocada en lo alto de este mástil resultará en un momento de: 165 N · 1.50 m = 247.50 N·m.
- El de la antena de FM: esta antena es más pequeña y de menor carga al viento. La antena circular FM de Televés de referencia 1201 tiene una carga de 37 N. Colocada a 0.50 m de la base del poste, su momento flector será de 18.50 N·m.

![[Torreta_Televés.png]]

Sumando todas las componentes, nos sale que el mástil deberá soportar 321.68 N·m (55.68 N·m + 247.50 N·m + 18.50 N·m). Aplicando un coeficiente de seguridad de 2, deberemos buscar mástiles que soporten el doble de esa cantidad. La resistencia depende del grosor del material del mástil y podemos encontrar diferentes valores. Por ejemplo, la serie 3010 de Televés soporta hasta 656.75 N.m. A veces, para cumplir esta condición se coloca más abajo la antena de TDT+DAB desoyendo la recomendación de la frecuencia (no es muy grave si la recepción y la altura de la ubicación son buenas).

Para rematar la parte de antenas terrenas debemos mencionar que, a veces, se emplean torretas para lograr mayor altura. Eso es particularmente necesario si se trata de un edificio rodeado de otros más altos. Los detalles de diseño son iguales salvo que el mástil no va directamente en la zapata de hormigón sino encima de la torreta. La torreta debe instalarse según las especificaciones del fabricante en cuanto a zapata y vientos (cables de soporte). Procediendo así, podemos suponer que la torreta aguantará el viento máximo y el cálculo de resistencia del mástil es igual que en el ejemplo anterior.

### Satélite

Para la antena parabólica se utilizará un mástil independiente. Según la norma la distancia entre los dos mástiles debería ser de al menos 5m. Para diseñar una instalación de recepción de satélite deberemos tener en cuenta tres cuestiones:

- Los ángulos de apuntamiento necesarios para recibir señal del satélite deseado.
- La ganancia de la antena, para elegir una parabólica adecuada al servicio que queremos distribuir.
- La resistencia al viento igual que en el caso anterior.

Para calcular los ángulos de apuntamiento debemos conocer cuál es el satélite deseado (se trata de satélites geoestacionarios que describen órbitas coplanares con el ecuador, el dato fundamental aquí es la longitud sobre la que se encuentra el satélite). También deberemos conocer las coordenadas geodésicas del receptor (del edificio objeto de nuestra ICT).

Vamos a exponer las fórmulas al mismo tiempo que realizamos un ejemplo. Para la ubicación que nos ocupa: C/ Gran Vía 1, Vigo; las coordenadas serían 42.22° N, 8.71° W. Supongamos que queremos apuntar al Hispasat-1D situado en longitud 30° W. Primero debemos saber que el convenio habitual es que la latitud norte es positiva y la sur negativa (en este caso λ<sub>rec</sub> = 42.22°, λ<sub>sat</sub> = 0 como siempre por ser geoestacionario). En cuanto a longitudes, cuando son hacia el este son positivas (φ<sub>rec</sub> = -8.71°, φ<sub>sat</sub> = -31°).

Empezaremos por calcular el ángulo azimut (el giro sobre el plano horizontal, necesario para apuntar a ese satélite). El primer paso es calcular la longitud relativa del satélite respecto de la estación terrena (receptora en este caso): φ =φ<sub>sat</sub> - φ<sub>rec</sub> = -31º - (-8.71º) = -22.29°. Ahora podemos aplicar la fórmula del azimut (l es la latitud de la estación, la del satélite es 0° por ser geoestacionario):

$$
tg(A_{x}) = \frac{tg(\varphi)}{sen(\lambda)} = \frac{tg(-21.29º)}{sen(42.22º)}
$$

Lo que resulta en un Azimut de -30.11°. Ese dato es inútil si no sabemos que esta fórmula va a producir ángulos REFERIDOS AL SUR donde además el sentido horario corresponde con ángulos negativos. Por tanto el ángulo calculado se correspondería con la siguiente figura:

![[Azimut_parabólica.png]]

El azimut muchas veces se da referido al norte. En este caso, sería de 180º + 30.11º = 210.11º.