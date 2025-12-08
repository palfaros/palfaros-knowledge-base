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
- Opción 3: Indistintamente Estrella o árbol-rama

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

### Pregunta 2

**¿Cómo se puede diseñar la topología de la red de distribución/dispersión?**
- Opción 1: Estrella
- Opción 2: Árbol-rama
- Opción 3: Indistintamente Estrella o árbol-rama

**Respuesta**: Árbol-rama.
**Justificación**: Como el número de pares de la red es superior a 30 (72 en total) la topología será en Árbol-rama.

### Pregunta 3

**Dimensiona el/los cables de pares que se utiliza para la red de distribución.**

**Respuesta**: Se utiliza 1 cable de 75 pares.
**Justificación**: Obtenido el valor del número de pares necesario (72) se utiliza el cable normalizado de capacidad igual o superior a dicho valor (75).

![[Tipos_cable_pares.png]]

### Pregunta 4

**Dimensiona:**
#### La asignación de pares por planta

Depende del proyectista. Es necesario de todas maneras cumplir las necesidades de demanda calculadas. En este caso vamos a suponer la siguiente distribución:
- Planta baja: 14 pares. Necesidad 11 pares. Quedan 3 pares de reserva en planta baja.
- Resto de plantas: 10 pares por planta. Necesidad 8 pares por planta. Quedan 2 pares de reserva por planta.

Quedaría un par libre.

El regletero correspondiente al punto de interconexión es:

|                    |             |
| :----------------: | :---------: |
| Pares del 1 al 10  |  Planta 6ª  |
| Pares del 11 al 20 |  Planta 5ª  |
| Pares del 21 al 30 |  Planta 4ª  |
| Pares del 31 al 40 |  Planta 3ª  |
| Pares del 41 al 50 |  Planta 2ª  |
| Pares del 51 al 60 |  Planta 1ª  |
| Pares del 61 al 74 | Planta baja |
|       Par 75       |  Par libre  |

#### El punto de interconexión de pares (registro principal)

El número de regletas de salida se debe corresponder al número total del pares de la red de distribución, ya que todos deben estar conectados.

En esta caso se ha instalado un cable de 75 pares, con lo que el número de regletas a equipar en el punto de interconexión es el resultado de dividir por 10 (regletas de 10 pares) el número total de pares del cable correspondiente a la red de distribución del edificio redondeado al número entero superior.

Se necesitarán por tanto 75/10 = 8 regletas de 10 pares.

Regletas de entrada: Es necesario calcular el espacio a reservar  para los paneles de conexión o regletas de entrada de los operadores.

El número de regletas de entrada previsto para los operadores será el resultado de multiplicar por 1,5 el número de regletas de salida:

8 x1,5= espacio para 12 regletas de 10 pares.

#### El punto de distribución por planta

El número de regletas del punto de distribución de cada planta se obtiene dividiendo el número de pares segregados en cada planta por 10 o por 5; según sean regletas de 10 o 5 pares respectivamente.

En este caso:
- Cada planta vivienda: 10 líneas/10= 1 regleta de 10 pares por planta.
- Planta baja: 14 líneas/10= 2 regletas de 10 pares; o 1 regleta de 10 pares y 1 de 5 pares, o 3 regletas de 5 pares.

#### La red de dispersión

Se utilizan 31 cables de dos pares o 59 cables de 1 par.

El número de pares de la red de dispersión es de 2 por vivienda y 3 como mínimo por local comercial y 2 para estancias comunes. En este caso será de 6x4 (viviendas) + 3x2 (locales)+ 1 (estancia común)= 31 cables de 2 pares.

|           |            |           |            |           |            |           |            |
| --------- | ---------- | --------- | ---------- | --------- | ---------- | --------- | ---------- |
| Planta 6ª |            | Planta 5ª |            | Planta 4ª |            | Planta 3ª |            |
| Par 1     | Piso 6ºA   | Par 11    | Piso 5ºA   | Par 21    | Piso 4ºA   | Par 31    | Piso 4ºA   |
| Par 2     | Piso 6ºA   | Par 12    | Piso 5ºA   | Par 22    | Piso 4ºA   | Par 32    | Piso 4ºA   |
| Par 3     | Piso 6ºB   | Par 13    | Piso 5ºB   | Par 23    | Piso 4ºB   | Par 33    | Piso 4ºB   |
| Par 4     | Piso 6ºB   | Par 14    | Piso 5ºB   | Par 24    | Piso 4ºB   | Par 34    | Piso 4ºB   |
| Par 5     | Piso 6ºC   | Par 15    | Piso 5ºC   | Par 25    | Piso 4ºC   | Par 35    | Piso 4ºC   |
| Par 6     | Piso 6ºC   | Par 16    | Piso 5ºC   | Par 26    | Piso 4ºC   | Par 36    | Piso 4ºC   |
| Par 7     | Piso 6ºD   | Par 17    | Piso 5ºD   | Par 27    | Piso 4ºD   | Par 37    | Piso 4ºD   |
| Par 8     | Piso 6ºD   | Par 18    | Piso 5ºD   | Par 28    | Piso 4ºD   | Par 38    | Piso 4ºD   |
| Par 9     | Rsv Piso 6 | Par 19    | Rsv Piso 5 | Par 29    | Rsv Piso 4 | Par 39    | Rsv Piso 4 |
| Par 10    | Rsv Piso 6 | Par 20    | Rsv Piso 5 | Par 30    | Rsv Piso 4 | Par 40    | Rsv Piso 4 |

| Planta 2ª |            | Planta 1ª |            | Planta Baja |           | Pares libre |       |
|-----------|------------|-----------|------------|-------------|-----------|-------------|-------|
| Par 41    | Piso 2ºA   | Par 51    | Piso 1ºA   | Par 61      | Local A   | Par 75      | Libre |
| Par 42    | Piso 2ºA   | Par 52    | Piso 1ºA   | Par 62      | Local A   |             |       |
| Par 43    | Piso 2ºB   | Par 53    | Piso 1ºB   | Par 63      | Local A   |             |       |
| Par 44    | Piso 2ºB   | Par 54    | Piso 1ºB   | Par 64      | Local B   |             |       |
| Par 45    | Piso 2ºC   | Par 55    | Piso 1ºC   | Par 65      | Local B   |             |       |
| Par 46    | Piso 2ºC   | Par 56    | Piso 1ºC   | Par 66      | Local B   |             |       |
| Par 47    | Piso 2ºD   | Par 57    | Piso 1ºD   | Par 67      | Local C   |             |       |
| Par 48    | Piso 2ºD   | Par 58    | Piso 1ºD   | Par 68      | Local C   |             |       |
| Par 49    | Rsv Piso 2 | Par 59    | Rsv Piso 1 | Par 69      | Local C   |             |       |
| Par 50    | Rsv Piso 2 | Par 60    | Rsv Piso 1 | Par 70      | Est Comun |             |       |
|           |            |           |            | Par 71      | Est Comun |             |       |
|           |            |           |            | Par 72      | Rsv PB    |             |       |
|           |            |           |            | Par 73      | Rsv PB    |             |       |
|           |            |           |            | Par 74      | Rsv PB    |             |       |

#### Red interior de usuario

La red interior de usuario se instalará de cable de pares trenzados. La red interior de usuario será de pares trenzados si la red de distribución/dispersión es de pares trenzados, cable de pares o fibra óptica.

#### Cuadro resumen

##### Red de Distribución/Dispersión

|                                           |                                                        |
| :---------------------------------------: | :----------------------------------------------------: |
|                 Material                  |                        Cantidad                        |
| Cables, Red de Distribución y dispersión  | 25 m de cable de 75 pares<br>320 m de cable de 2 pares |
| Regletas de salida Punto de Interconexión |                 8 regletas de 10 pares                 |
|    Regletas de puntos de distribución     |                 8 regletas de 10 pares                 |
|        Puntos de Acceso al Usuario        |                           59                           |

## Red de cable coaxial

### Pregunta 1

Tenemos un edificio de un solo portal con 6 plantas, 4 viviendas por planta, y una planta baja con 3 locales comerciales y un espacio común. Las viviendas son idénticas con 5 estancias cada una.

![[Cuestiones_UTP.png]]

Suponiendo el mismo edificio de las cuestiones anteriores donde ya calculamos la red de cable de pares trenzados y red de cable de pares. Vamos a responder a las siguientes preguntas relacionadas con la red de cable coaxial.

**¿Cómo se puede diseñar la topología de la red de distribución/dispersión?**
- Opción 1: Estrella
- Opción 2: Árbol-rama
- Opción 3: Indistintamente Estrella o árbol-rama

**Respuesta**: Árbol-rama.
**Justificación**: La topología de la red, al tratarse de una red de cables coaxiales será en estrella cuando el número de PAUs sea inferior a 20 y en árbol-rama cuando el número de PAU sea superior a 20. En este caso el número de **PAU** es: PAU= 3 (locales) + 1 (espacio común) + 6 x 4 (viviendas) = **28**. Por lo que la red de distribución es en árbol-rama.

### Pregunta 2

**Calcula el número de acometidas totales de la red.**

**Respuesta**: 29.
**Justificación**: Se pondrá de acuerdo al Reglamento:
- 1 acometida por local.
- 2 acometidas para estancias comunes de la edificación.
- 1 acometida por vivienda.

### Pregunta 3

**Dimensiona:**
#### El dimensionamiento de la red de distribución y dispersión

El árbol de distribución partirá del Punto de Interconexión situado en el Registro Principal, ubicado en el RITI, discurrirán por las respectivas canalizaciones principales, derivándose, en cada Registro Secundario de planta, los cables coaxiales necesarios para atender a las necesidades de la misma.

Se usan derivadores en cada Planta con un número de salidas igual al número de PAUs que alimentan. Desde el Registro Secundario de planta se tenderán los cables coaxiales de la red de dispersión, hasta los PAU de cada vivienda o local.

![[Cuestiones_Red_Distribución_Coaxial.png]]

|        |             |         |
| :----: | :---------: | :-----: |
| Planta |  Derivador  | Salidas |
|   6ª   | Derivador 7 |    4    |
|   5ª   | Derivador 6 |    4    |
|   4ª   | Derivador 5 |    4    |
|   3ª   | Derivador 4 |    4    |
|   2ª   | Derivador 3 |    4    |
|   1ª   | Derivador 2 |    4    |
|  Baja  | Derivador 1 |    4    |

#### La atenuación red de distribución y dispersión

El árbol de distribución partirá del Punto de Interconexión situado en el Registro Principal, ubicado en el RITI, discurrirán por las respectivas canalizaciones principales, derivándose, en cada Registro Secundario de planta, los cables coaxiales necesarios para atender a las necesidades de la misma.

En este caso se realizará un proceso similar al seguido para el cálculo de las atenuaciones que el seguido en el tema anterior en lo referente a RTV.

A partir del esquema se elige la red de derivadores y se calcula la atenuación desde el PI al PAU más alejado (o mejor dicho a la peor toma).

La atenuación de la red es debida a los metros de cable y la atenuación en paso de los derivadores. Además en este caso el reglamento obliga a incluir conectores F, con lo que será necesario sumar la atenuación de dichos conectores (aproximadamente 0,4 dB).

Si la atenuación es superior a la indicada por el reglamento se revisará la composición de la red con el cambio de los derivadores a utilizar o el cable para conseguir menores pérdidas. Incluso pueden llegar a combinarse ambos tipos de redes (estrella y árbol-rama) si fuese necesario.

Las atenuaciones máximas permitidas son:

- Si Nº de PAUs ≤ 20. Configuración en estrella. Pérdida máxima de 20 dB entre RITI y PAU más alejado en cualquier punto de la banda 86-860 MHz.
- Si Nº de PAUs > 20. Configuración en árbol-rama. Pérdida máxima de 36 dB en banda 86MHz – 860 MHz y 29 dB en la banda 5-65 MHz entre RITI y PAU más alejado.

Con carácter general el tipo de cable será RG-59 (atenuación máxima a 862 MHz de 24,5 dB).

La atenuación de los conectores F es de 0,4 dB aproximadamente.

Vemos a modo de ejemplo la atenuación para la toma más alejada, suponiendo por simplicidad que usamos derivadores con pérdidas de inserción de 1dB en toda la banda y pérdidas de derivación de 10 dB (aunque lo normal sería utilizar derivadores diferentes; en las plantas inferiores con pérdidas de inserción pequeñas y con pérdidas de derivación mayores y en las plantas más altas o en la última planta pérdidas de inserción mayores pero menores pérdidas de derivación,…).

|                         |                           |                            |
| :---------------------: | :-----------------------: | :------------------------: |
|    Distancia PAU 6ªD    |         40 metros         |                            |
|       Frecuencia        |           5 MHz           |          860 MHz           |
|  Pérdidas de inserción  |  1 dB · 6 plantas = 6 dB  |            6 dB            |
| Pérdidas de derivación  |           10 dB           |           10 dB            |
| 40 m cable coaxial RG59 | 0,06 dB/m · 40 m = 2,4 dB | 0,245 dB/m · 40 m = 9,8 dB |
|     12 conectores F     |          4,8 dB           |           4,8 dB           |
|          **Total**          |          **23,2 dB**          |          **30,6 dB**           |
| **Valor máximo reglamento** |           **29 dB**           |           **36 dB**            |

#### El punto de interconexión

No hay que realizar diseño del punto de interconexión para la red de cable coaxial. Será necesario un cable para la red de árbol-rama que partiendo del punto de interconexión llegue al distribuidor de la última planta.

### Pregunta 4

**Dimensiona la red interior de usuario.**

**Respuesta**: Se instalarán un total de 48 cables en las viviendas y un total de 48 BATs.
**Justificación**: Se instalan 2 cables por Vivienda. En locales no se conoce distribución interior por lo que no se instalan. Cada cable termina en un BAT. Sería necesario igualmente calcular la atenuación de la red interior. Los cables de Red Interior parten del RTR hasta las dos bases (situadas en el salón y en el dormitorio principal).

## Red de fibra óptica

### Pregunta 1

Tenemos un edificio de un solo portal con 6 plantas, 4 viviendas por planta, y una planta baja con 3 locales comerciales y un espacio común. Las viviendas son idénticas con 5 estancias cada una.

![[Cuestiones_UTP.png]]

Suponiendo el mismo edificio de las cuestiones anteriores, vamos a responder a las siguientes preguntas relacionadas con la red de fibra óptica.

**¿Cómo se puede diseñar la topología de la red de distribución/dispersión?**
- Opción 1: Estrella
- Opción 2: Árbol-rama
- Opción 3: Indistintamente Estrella o árbol-rama

**Respuesta**: Árbol-rama.
**Justificación**: Por ser el número de PAU superior a 20 (28 recuerda que habíamos calculado) será necesario realizar la Red de distribución en árbol-rama. El árbol de distribución partirá del Punto de Interconexión situado en el Registro Principal, ubicado en el RITI, discurrirán por las respectivas canalizaciones principales, derivándose, en cada Registro Secundario de planta, los cables de fibra óptica necesarios para atender a las necesidades de la misma. Desde el Registro Secundario de planta se tenderán los cables de fibra óptica de la red de dispersión, hasta los PAU de cada vivienda o local.

### Pregunta 2

**Calcula el número de acometidas totales de la red.**

**Respuesta**: 36.
**Justificación**: Se pondrá de acuerdo al Reglamento:
- 1 acometida por local.
- 2 acometidas para estancias comunes de la edificación.
- 1 acometida por vivienda.
Recordatorio: 1 acometida = 1 cable de 2 fibras ópticas.

|                                                |                 |                                |                  |                            |                                    |
| ---------------------------------------------- | :-------------: | :----------------------------: | :--------------: | :------------------------: | :--------------------------------: |
|                                                | N° de Viviendas | N° de acometidas por Viv/local | Demanda Prevista | Factor de Ocupación de Red | Total Pares de Red de Distribución |
| Vivienda                                       |       6x4       |               1                |        24        |            1,2             |                 29                 |
| Locales (con distribución conocida)            |        3        |               1                |        3         |            1,2             |                 4                  |
| Estancias o instalaciones comunes del Edificio |        1        |               2                |        2         |            1,2             |                 3                  |
| Total                                          |                 |                                |                  |                            |                 36                 |

### Pregunta 3

**Dimensiona el/los cables de fibras ópticas que se utiliza para la red de distribución.**

**Respuesta**: 1 cable/s multifibra: 48 acometidas con un total de 96 fibras ópticas.
**Justificación**: Obtenido el valor del número de acometidas se utiliza el cable normalizado de capacidad igual o superior a dicho valor (48) (o bien un cable multifibra de 24 acometidas y otro de 16 acometidas). Cada acometida tiene 2 cables de fibra óptica.

### Pregunta 4

**¿Qué distribución propones de la red?**

Hay que suministrar 48 acometidas de fibra óptica. Se propone la siguiente distribución:

|            |           |            |
| :--------: | :-------: | :--------: |
| **Planta** | Necesidad | Asignación |
|   **6ª**   |     4     |     7      |
|   **5ª**   |     4     |     7      |
|   **4ª**   |     4     |     7      |
|   **3ª**   |     4     |     7      |
|   **2ª**   |     4     |     6      |
|   **1ª**   |     4     |     6      |
|  **Baja**  |     5     |     8      |
| **TOTAL**  |  **29**   |   **48**   |

### Pregunta 5

**Calcula la atenuación de la red de distribución/dispersión.**

Como valores típicos tenemos:

|                    |                     |
| :----------------: | :-----------------: |
|      Elemento      |     Atenuación      |
|  Conector SC/APC   |    0,2 - 0,3 dB     |
|   Cable de F.O.    | 0,40 dB/km @1310 nm |
| Empalme por fusión |   0,03 - 0,05 dB    |
|  Empalme mecánico  |    0,06 - 0,2 dB    |

La atenuación máxima se corresponde a la acometida de red de distribución/dispersión desde el punto de interconexión hasta el PAU más alejado (vivienda 6ºD); cuya longitud es de 40 metros.

Suponemos un empalme mecánico:

Atenuación= 0,3 dB (Conector SC/APC) +  0,04 km · 0,40 dB/km (Cable F.O.) + 0,2 dB (Empalme mecánico) = 0,3 dB + 0,016 dB + 0,2 dB = 0,516 dB < 1,5 dB.

La red prevista cumple la atenuación requerida.

### Pregunta 6

**Dimensiona:**
#### El punto de interconexión en el RITI

En este caso la red de distribución está formada por un cable con 48 acometidas, que requieren 2 paneles de 24 conectores dobles SC/APC.

Además es necesario dejar espacio para operadores equivalente a 4 paneles de 24 conectores dobles.
#### La red dispersión

En este caso es necesario tender una acometida óptica desde la Caja de segregación situada en el Registro Secundario hasta el PAU de cada vivienda, local o estancia común.

Se trataría de un cable de acometida de 2 fibras.

Serán, por tanto necesarios 4 cables de acometida por planta, es decir un total de 6 x 4 =24 cables de acometida de 2 fibras para configurar la red de dispersión de las plantas, 3 para los locales y 2 para la estancia común.

### Pregunta 7

**¿La red interior de usuario se instalará de?**
- Opción 1: Cable de pares trenzados
- Opción 2: Cable de fibra óptica
- Opción 3: Cable coaxial

**Respuesta**: Cable de pares trenzados.
**Justificación**: La red de interior de usuario será de pares trenzados, salvo en la estancia principal (salón) que se instalará una acometida de fibra óptica.