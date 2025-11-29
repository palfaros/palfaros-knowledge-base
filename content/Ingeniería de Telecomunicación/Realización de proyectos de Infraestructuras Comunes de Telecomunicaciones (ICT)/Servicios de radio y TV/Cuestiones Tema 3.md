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

## Amplificadores y Atenuadores

Dada una atenuación del cable coaxial de 0'15dB/m y los datos del siguiente esquema, calcula el nivel de señal a la salida

![[Ejercicio_Amplificadores_Atenuadores.png]]

**Solución**: 
1. El nivel de la señal a la salida será 50dBµV+40dB-3dB-12dB-(atenuación del cable). 
2. La atenuación del cable será (4+3+3+10)·0,15dB/m=3dB
3. Por tanto el nivel de señal resultante es de **72dBµv**

## Intermodulación

Supongamos que se han instalado amplificadores con nivel de salida máximos:
- Amplificadores monocanales: S<sub>max</sub>=114 dBμV (S/I=35dB).
- Amplificadores FI (950-2150 MHz): S<sub>max</sub>=120 dBμV (S/I=35dB).

Vamos a suponer que después de haber calculado la atenuación de la red de distribución obtenemos que los amplificadores tienen que tener los siguientes niveles de salida:
- Banda UHF: 105 dBμV.
- Banda FI: 115 dBμV.

La relación señal/intermodulación será (o portadora/intermodulación si queremos ser estrictos) será por tanto:
- Banda UHF: S/I = 35 dB + 2 ·  (**114 dBμV** - **105 dBμV**) = 35 dB + 18 dB = **53 dB**
- Banda FI (suponemos que se amplifican 30 portadoras): S/I = 35 dB + 2 ·  (**120 dBμV** - 7.5log(30-1) - **115 dBμV**) = **35 dB** + 2 ·  (**120 dBμV** - 10.97 - **115 dBμV**) = 35 dB - 11.94 dB  = **23.06 dB**