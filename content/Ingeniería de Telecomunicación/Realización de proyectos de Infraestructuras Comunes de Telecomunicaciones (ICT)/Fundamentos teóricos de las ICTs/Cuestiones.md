---
title: Cuestiones
date: 2025-11-15
---
## Unidades logarítmicas (dB)

### Pregunta 1

*Si nos dicen que la potencia recibida por una antena es de -20 dBW, eso significa*

**Solución**: Que la potencia recibida es igual a 10mW.

### Pregunta 2

*Si nos dicen que el campo eléctrico producido por una antena de TV es de 60 dBV/m. ¿A cuánto equivaldrá en unidades naturales?*

**Solución**: 10<sup>3</sup> V/m.

### Pregunta 3

*Si tenemos una tensión eléctrica de 1V, en dBV equivaldrá a:*

**Solución**: 0 dBV,

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