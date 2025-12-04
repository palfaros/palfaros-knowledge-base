---
title: Cuestiones Tema 4
date: 2025-12-02
---
## Red de cables de pares trenzados (UTP)

### Pregunta 1

Tenemos un edificio de un solo portal con 6 plantas, 4 viviendas por planta, y una planta baja con 3 locales comerciales y un espacio común. Las viviendas son idénticas con 5 estancias cada una.

![[Cuestiones_UTP.png]]

**Calcula las distancias (en m) desde el RITI  a cada uno de los PAU del edificio**

|             |                |               |
| ----------- | -------------- | ------------- |
|             |                | Distancia (m) |
| Planta Baja |                |               |
|             | PAU local 1    | 8             |
|             | PAU local 2    | 10            |
|             | PAU local 3    | 8             |
|             | Estancia común | 10            |
| Planta 1    |                |               |
|             | PAU 1ºA        | 16            |
|             | PAU 1ºB        | 20            |
|             | PAU 1ºC        | 22            |
|             | PAU 1ºD        | 25            |
| Planta 2    |                |               |
|             | PAU 2ºA        | 19            |
|             | PAU 2ºB        | 23            |
|             | PAU 2ºC        | 25            |
|             | PAU 2ºD        | 28            |
| Planta 3    |                |               |
|             | PAU 3ºA        | 22            |
|             | PAU 3ºB        | 26            |
|             | PAU 3ºC        | 28            |
|             | PAU 3ºD        | 31            |
| Planta 4    |                |               |
|             | PAU 4ºA        | 25            |
|             | PAU 4ºB        | 29            |
|             | PAU 4ºC        | 31            |
|             | PAU 4ºD        | 34            |
| Planta 5    |                |               |
|             | PAU 5ºA        | 28            |
|             | PAU 5ºB        | 32            |
|             | PAU 5ºC        | 34            |
|             | PAU 5ºD        | 37            |
| Planta 6    |                |               |
|             | PAU 6ºA        | 31            |
|             | PAU 6ºB        | 35            |
|             | PAU 6ºC        | 37            |
|             | PAU 6ºD        | 40            |

### Pregunta 2

**¿Es posible diseñar una red de pares trenzados?**
- Opción 1: Si
- Opción 2: No

**Respuesta**: Sí
**Justificación**: Para saber si es posible la instalación de una red de cable de pares trenzados, nos hace falta conocer la distancia entre el punto de interconexión en el RITI y el PAU más alejado. Si es menor de 100 metros; como es el caso (40 metros) entonces es posible diseñar la red de cable de pares trenzados UTP, categoría 6 o superior.

### Pregunta 3

**¿Cómo se puede diseñar la topología de la red de distribución/dispersión?**
- Opción 1: Estrella
- Opción 2: Árbol-rama
- Opción 2: Indistintamente Estrella o árbol-rama

**Respuesta**: Estrella.
**Justificación**: La topología de la red, al tratarse de una red de cable de pares trenzados UTP siempre será en estrella. La red de distribución por tanto continúa en el registro secundario de cada planta como red de dispersión hasta el  PAU de cada vivienda, formado una red en estrella.

### Pregunta 4

**¿Cuál es el número total de acometidas de la red?**

**Respuesta**: 36
**Justificación**: El número de **PAU** es: PAU= 3 (locales) + 1 (espacio común) + 6 x 4 (viviendas) = **28**
Se pondrá de acuerdo al Reglamento:
- 1 acometida por local.
- 2 acometidas por cada estancia común.
- 1 acometida por vivienda.
Por tanto el total de acometidas lo vemos en el siguiente cuadro:

|                                                |                 |                                |                  |                            |                                    |
| ---------------------------------------------- | :-------------: | :----------------------------: | :--------------: | :------------------------: | :--------------------------------: |
|                                                | N° de Viviendas | N° de Acometidas por Viv/local | Demanda Prevista | Factor de Ocupación de Red | Total Pares de Red de Distribución |
| Vivienda                                       |       6x4       |               1                |        24        |            1,2             |                 29                 |
| Locales (con distribución conocida)            |        3        |               1                |        3         |            1,2             |                 4                  |
| Estancias o instalaciones comunes del Edificio |        1        |               2                |        2         |            1,2             |                 3                  |
| Total                                          |                 |                                |        29        |                            |                 36                 |

Se instalarán por tanto 36 acometidas de cable de pares trenzados UTP. Cada cable UTP está formado por 4 pares trenzados.

### Pregunta 5

**¿Qué distribución propones de la red?**

**Respuesta**: Hay que suministrar 36 acometidas de 4 pares trenzados. Se propone la siguiente distribución:

|        |           |            |
| :----: | :-------: | :--------: |
| Planta | Necesidad | Asignación |
|   6º   |     4     |     5      |
|   5º   |     4     |     5      |
|   4º   |     4     |     5      |
|   3º   |     4     |     5      |
|   2º   |     4     |     5      |
|   1º   |     4     |     5      |
|  Baja  |     5     |     6      |
| TOTAL  |    29     |     36     |

Se instalará por tanto:
- 1 par de cables trenzados por cada vivienda (24 en total)
- 1 par de cables trenzados por cada local (3 en total)
- 2 pares de cables trenzados para la estancia común ( 2 en total)
- 1 par de reserva para cada piso (6 en total)
- 1 par de reserva para la planta baja (1 en total)

### Pregunta 6

**¿Cuántos metros totales de cable de pares trenzado hay que instalar en la red de distribución?**

**Respuesta**: 929 metros.
**Justificación**: El número de metros de cable de acometida de 4 pares trenzados será: 8 + 10 + 8 + 10 +10+ 10 (reserva) + 16 + 20 + 22 + 25 + 25 (reserva 1ª planta) +19 + 23 + 25 + 28 + 28 (reserva 2ª planta) + 22 + 26 + 28 + 31 + 31(reserva 3ª planta)+ 25 + 29 + 31 + 34 +34 (reserva 4ªplanta) + 28 + 32 + 34 + 37 +37 (reserva 5ª planta) + 31 + 35 + 37 + 40 + 40 (reserva 6 planta)= 929 m.

### Pregunta 7

**Calcula la atenuación de la red de distribución/dispersión.**

**Respuesta**: 12,7 dB.
**Justificación**: La atenuación máxima se corresponde a la acometida de red de distribución/dispersión desde el punto de interconexión hasta el PAU más alejado (vivienda 6ºD); cuya longitud es de 40 metros.

Para el cálculo de la atenuación tomamos un valor típico de la atenuación de cable de pares trenzados de 31dB/100 metros a 250 MHz. Además hay que considerar además de la atenuación del cable. La atenuación del conector RJ45 macho del extremo de la acometida que se conecta al punto de interconexión.

Atenuación= 40 · 0,31 + 0,3 = 12,7  dB < 31,30 dB o menor que 35,9 dB (norma UNE-EN 50173-1).

### Pregunta 8

**Dimensiona:**
#### El punto de interconexión ubicado en el RITI

El número total de acometidas de cable UTP es de 36. Cada acometida debe de estar terminada en un conector hembra miniatura de 8 vías (RJ-45), por lo que el número de conectores hembra necesarios será de **36.**

- Paneles de salida: Si se utilizan paneles de 24  conectores hembra, el número de paneles de salida será 36/24 = 2. También se puede usar uno de 24 conectores más otro de 16.
- Paneles de entrada: Será necesario **dejar espacio** para los paneles de los operadores con capacidad para 36 · 1,5 = 54.

Se puede reservar espacio por tanto para 2 paneles de 24 conectores más otro de 16 para el panel de conexión de entrada.

#### La red interior de Usuario

**El número de BAT a instalar es de: 175 BATs**.

Instalaremos los siguientes BAT:
- 1 BAT por cada estancia de la vivienda, y en dos de ellas, 2 BAT (BAT con dos tomas o conectores hembra). Como hay 5 estancias por vivienda, instalaremos 7 BAT por vivienda.
- Suponemos 2 BAT por local  (BAT con dos tomas o conectores hembra )
- Suponemos 1 BAT simple para la estancia común.

Así, el número de BAT sería: 7 · 6 · 4 (viviendas) + 2 · 3 (locales) + 1 (estancia) = 175.

Desde cada BAT deberá tenderse un cable de 4 pares de cable trenzado hasta el punto de acceso a usuario de cada vivienda, local o estancia común (PAU).

Es necesario calcular el número de metros totales de cable. Para ello sería necesario contar con los planos de distribución de planta. En este caso, para simplificar suponemos lo siguiente:

Suponemos las siguientes distancias desde el PAU de cada vivienda hasta cada BAT (a ver en el plano de la instalación): 10+10+8+8+12+11+6 = 65 m

Suponemos que los locales no están cableados interiormente.

El total de metros de cable de pares trenzados para la red interior es de = 65 · 6 · 4 + 12 + 28 = 1560 metros cable UTP.

##### Conectores

Cada uno de los cables de pares trenzados que constituyen la red interior de usuario terminará en un conector macho miniatura de 8 vías (RJ-45); (en el PAU).

El número de cables por vivienda es igual al número de BAT, que es de 7.

Por tanto, el número de conectores macho miniatura de 8 vías necesarias es igual al número de BAT, 175.

##### Multiplexores

El número de bocas hembra miniatura de 8 vías (RJ-45) de que deben disponer los multiplexores es igual al número de acometidas servidas por la red interior, que en este caso es de 7.

Dado que existirá un multiplexor por cada PAU con red interior serán necesarios: 6·4 = 24. Multiplexores de 7 bocas conectores hembra miniatura de 8 vías (RJ-45).

#### Atenuación de la red interior de usuario

Se considera la atenuación del cable; la del conector RJ-45 macho de la roseta del PAU, la del multiplexor pasivo (equivalente a dos conectores RJ-45) y la de la toma.

Para la de los conectores RJ-45 y la de las tomas podemos considerar una atenuación de 0,3 dB

Atenuación máxima red interior usuario. Corresponde a la distancia de la toma más alejada del PAU hasta el mismo.  Supongamos 12 metros: 12 · 0,31 + 0,3 + 2 · 0,3 + 0,3 = 4,92 dB < 31,3 dB.

#### Cuadro resumen

##### Red de Distribución/Dispersión

|                                           |                                                             |
| :---------------------------------------: | :---------------------------------------------------------: |
|                 Material                  |                          Cantidad                           |
| Cables, Red de Distribución y dispersión  |     929 m de cable de 4 pares trenzados UTP categoría 6     |
| Regletas de salida Punto de Interconexión | 2 Paneles de 24 conectores macho miniatura de 8 vías (RJ45) |
|           Conectores macho RJ45           |                             36                              |
|        Puntos de Acceso al Usuario        |                             29                              |

##### Red Interior de Usuario

|                                |                                                      |
| :----------------------------: | :--------------------------------------------------: |
|            Material            |                       Cantidad                       |
| Cables Red interior de usuario | 1560 m de cable de 4 pares trenzados UTP categoría 6 |
|     Conectores macho RJ45      |                         175                          |
|   Bases de Acceso al Usuario   |                         175                          |
|    Multiplexores para PAUs     |                    24 de 7 bocas                     |
## Red de cables de pares telefónicos

### Pregunta 1

Tenemos un edificio de un solo portal con 6 plantas, 4 viviendas por planta, y una planta baja con 3 locales comerciales y un espacio común. Las viviendas son idénticas con 5 estancias cada una.

![[Cuestiones_UTP.png]]

Supondremos por simplicidad el mismo edificio del ejemplo anterior, que si bien es cierto que debería instalarse una red de cable de pares trenzados y no de cable de pares, pues la longitud del punto de interconexión al PAU más alejado es menor de 100 metros, desde un punto de vista académico, realizaremos igualmente el ejemplo.

**Calcula el número de pares totales de la red**

**Respuesta**: 72
**Justificación**: Se pondrá de acuerdo al Reglamento:
- 3 líneas por local.
- 2 líneas por cada estancia común.
- 2 líneas por vivienda.
Por tanto el total de acometidas lo vemos en el siguiente cuadro:

|                                                |                 |                            |                  |                            |                                    |
| ---------------------------------------------- | :-------------: | :------------------------: | :--------------: | :------------------------: | :--------------------------------: |
|                                                | N° de Viviendas | N° de líneas por Viv/local | Demanda Prevista | Factor de Ocupación de Red | Total Pares de Red de Distribución |
| Vivienda                                       |       6x4       |             2              |        48        |            1,2             |                 58                 |
| Locales (con distribución conocida)            |        3        |             3              |        9         |            1,2             |                 11                 |
| Estancias o instalaciones comunes del Edificio |        1        |             2              |        2         |            1,2             |                 3                  |
| Total                                          |                 |                            |                  |                            |                 72                 |

