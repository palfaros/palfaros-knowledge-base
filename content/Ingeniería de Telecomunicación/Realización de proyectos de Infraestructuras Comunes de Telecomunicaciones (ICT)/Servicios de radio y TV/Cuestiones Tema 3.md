---
title: Cuestiones Tema 3
date: 2025-11-29
---
## Elementos de captación

*Calcula el azimut y la elevación de una antena para el satélite ASTRA (23,5º este), suponiendo el mismo emplazamiento que en los ejemplos, Gran Vía nº1 Vigo. Redondea los resultados a un decimal:*

**Solución**: 

Primero debemos saber que el convenio habitual es que la latitud norte es positiva y la sur negativa (en este caso λ<sub>rec</sub> = 42.22°, λ<sub>sat</sub> = 0 como siempre por ser geoestacionario). En cuanto a longitudes, cuando son hacia el este son positivas (φ<sub>rec</sub> = -8.71°, φ<sub>sat</sub> = 23.5°).

El primer paso para calcular el *azimut* es calcular la longitud relativa del satélite: φ =φ<sub>sat</sub> - φ<sub>rec</sub> = 23.5º - (-8.71º) = 32.21°.:

$$
tg(A_{x}) = \frac{tg(\phi)}{sen(\lambda_{rec})} = \frac{tg(32.21º)}{sen(42.22º)}
$$

Lo que resulta en un Azimut de 43.11°. se dato es inútil si no sabemos que esta fórmula va a producir ángulos REFERIDOS AL SUR donde además el sentido horario corresponde con ángulos negativos. El azimut muchas veces se da referido al norte. En este caso, sería de 180º - 43.11º = 136.89º.

**Por tanto, Azimut = 136.9º.**

Ahora debemos calcular la **elevación** (ángulo que debemos levantar la antena desde la horizontal. Para ello utilizamos la fórmula correspondiente:

$$
tg(\epsilon) = \frac{cos(\phi)cos(\lambda_{rec}) - R/(R+h)}{\sqrt{1-cos^{2}(\phi)cos^{2}(\lambda)}}
$$

Donde R es el radio de la tierra (aproximadamente R = 6370 Km) y h es la altura del satélite sobre el punto de la tierra más cercano a él (punto sub-satelital, situado siempre en el ecuador); R+h es el radio de la órbita de los satélites geoestacionarios (aproximadamente R+h = 42200 Km). 

$$
tg(\epsilon) = \frac{cos(32.21º)cos(42.22º) - 6370/(42200)}{\sqrt{1-cos^{2}(32.21º)cos^{2}(42.22º)}}
$$

El resultado es una elevación de 31.37º.

**Por tanto, Elevación = 31.4º.**

## Red Coaxial

### Pregunta 1

*Realiza los cálculos de atenuación para la señal de televisión por satélite (Banda 950MHz-2150MHz).*

**Solución**: *PENDIENTE.*

### Pregunta 2

*Calcula la respuesta amplitud frecuencia para el servicio de TDT del ejemplo visto durante el tema:*
- *Opción 1: 0.25 dB para la mejor toma y 0.75 dB para la peor toma.*
- *Opción 2: 0.35 dB para la mejor toma y 0.8 dB para la peor toma.*
- *Opción 3: 0.15dB para la mejor toma y 0.5 dB para la peor toma.*

**Solución**: **0.25 dB para la mejor toma y 0.75 dB para la peor toma.** 
Para calcular la respuesta amplitud frecuencia necesitamos la atenuación en la peor y en la mejor toma para la frecuencia baja y la alta. Estos datos se pueden extraer fácilmente de la tabla calculada en:
- Peor toma (Toma 2, V(B), P1): 35.20 dB (400 MHz), 35.90 dB (862 MHz). Por tanto, la respuesta amplitud frecuencia es 35.90 - 35.20 dB = 0.75 dB.
- Mejor toma (Toma 1, V(B), P2): 31.08 dB (400 MHz), 31.33 dB (862 MHz). Por lo que la respuesta amplitud frecuencia es 31.33 - 31.08 dB = 0.25 dB.

### Pregunta 3

*¿Está este valor dentro de los límites especificados por la norma?*

**Solución**: **Sí.** Consultando el R.D 346/2011, descubrimos que el máximo permitido es de 16 dB en la banda de 47-862MHz, por lo que estamos dentro de los límites.

### Pregunta 4

*Calcula el factor de ruido, para el ejemplo visto en el tema, suponiendo:*

- *Longitud del tramo de cable entre antena y cabecera de 5 m.*
- *Atenuación del cable coaxial 0.15 dB/m.*
- *Amplificador modelo 508912 (G=58 dB y F=9 dB).*

**Solución**: **9.75 dB.**
El factor de ruido global es:

$$
f_{r} = a_{1} + \frac{f_{2}-1}{1/a_{1}} + \frac{a_{3}-1}{(1/a_{1})g_{2}}
$$
donde:
- a<sub>1</sub> es la atenuación del cableado entre antena y cabecera.
- g<sub>2</sub> y f<sub>2</sub> son la ganancia y el factor de ruido del amplificador 508912
- a<sub>3</sub> es la atenuación desde la cabecera hasta la peor toma, es decir: 35.90 dB.

Por tanto,

$$
f_{r} = 10^{\frac{0.15 dB/m · 5 m}{10}} + \frac{10^{\frac{9 dB}{10}}-1}{1/10^{\frac{0.15 dB/m · 5 m}{10}}} + \frac{10^{\frac{35.90 dB}{10}}-1}{(1/10^{\frac{0.15 dB/m · 5 m}{10}})10^{\frac{58 dB}{10}}} = 1.19 + \frac{7.94-1}{1/1.19} + \frac{3889-1}{(1/1.19)630957} = 9.448 = 9.75 dB
$$

### Pregunta 5

*Calcula la CNR en la peor toma para el ejemplo del tema.*

*¿Está este valor dentro de los límites especificados por la norma?*

**Solución**: **30.26 dB.**
Tenemos todos los datos, la mayoría ya los utilizamos en el apartado anterior. T<sub>0</sub> es 290 K, B<sub>w</sub> es 8 MHz (canal de TDT) y k la constante de Boltzman: 1.381·10<sup>-23</sup> J/ºK.

Si suponemos que la temperatura de ruido de la antena es T<sub>0</sub>, la potencia de ruido en unidades naturales será (en la peor toma):

$$
n = kT_{0}B_{w}f_{r}\frac{g_{2}}{a_{1}a_{3}}
$$

Aplicando la fórmula sale n = 4.13·10<sup>-11</sup> W.

Con esto tenemos el denominador de la relación CNR. Para obtener la potencia de portadora debemos averiguar de alguna forma el nivel de señal. Nuestro cálculo definía un rango de 82.90-101.08 dBµV en la cabecera. Suponiendo el valor máximo: 101.08 dBµV, en la peor toma tendremos V = 101.08 dBµV – 35.90 dB = 65.18 dBµV (v=1.81 mV).

Finalmente, sabiendo que la impedancia de los sistemas de TV es de 75 Ω, aplicamos la fórmula del texto:

$$
CNR (dB) = 10\log_{10}(\frac{v^{2}/z_{0}}{n})
$$

Y obtenemos CNR = **30.26 dB**.

Consultando el R.D. 346/2011, descubrimos que el valor mínimo para este caso es de 25 dB, por lo que **estamos dentro de los límites**.
