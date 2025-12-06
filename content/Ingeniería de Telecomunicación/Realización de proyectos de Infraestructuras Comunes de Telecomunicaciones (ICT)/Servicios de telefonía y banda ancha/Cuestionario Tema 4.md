---
title: Cuestionario Tema 4
date: 2025-12-06
---
## Cuestión 1

En un edificio con 2 plantas y dos viviendas por planta, sin ascensor, sin bajos comerciales, con dos estancias comunes de la edificación; en que se utilice para telefonía una red de cable de pares

Selecciona una:
- Estará formada por un cable multipar de 25 pares.
- Estará formada por 10 cables de un par.
- Estará formada por 5 cables de dos pares.
- Cualquiera de las respuestas anteriores es válida
### Respuesta

Estará formada por un cable multipar de 25 pares.

### Justificación

Se pondrá de acuerdo al Reglamento:
- 3 líneas por local.
- 2 líneas por cada estancia común.
- 2 líneas por vivienda.
Por tanto el total de acometidas lo vemos en el siguiente cuadro:

|                                                |                 |                            |                  |                            |                                    |
| ---------------------------------------------- | :-------------: | :------------------------: | :--------------: | :------------------------: | :--------------------------------: |
|                                                | N° de Viviendas | N° de líneas por Viv/local | Demanda Prevista | Factor de Ocupación de Red | Total Pares de Red de Distribución |
| Vivienda                                       |       2x2       |             2              |        8         |            1,2             |                 5                  |
| Locales (con distribución conocida)            |        0        |             0              |        0         |            1,2             |                 0                  |
| Estancias o instalaciones comunes del Edificio |        2        |             2              |        4         |            1,2             |                 10                 |
| Total                                          |                 |                            |                  |                            |                 15                 |

La única opción que proporciona 15 pares es la opción *Estará formada por un cable multipar de 25 pares*. Las otras 2 opciones solo permiten 10 pares.

## Cuestión 2

En un edificio de 4 plantas y 2 viviendas por planta; dos estancias comunes; 1 cuarto de ascensores; y un único local comercial el número de acometidas mínimo con la que se dimensionará la red de cable de pares trenzados será

Seleccione una:
- 9
- 10
- 12
- 15
### Respuesta

15.

### Justificación

Se pondrá de acuerdo al Reglamento:
- 1 acometida por local.
- 2 acometidas por cada estancia común.
- 1 acometida por vivienda.
Por tanto el total de acometidas lo vemos en el siguiente cuadro:

|                                                |                 |                                |                  |                            |                                    |
| ---------------------------------------------- | :-------------: | :----------------------------: | :--------------: | :------------------------: | :--------------------------------: |
|                                                | N° de Viviendas | N° de Acometidas por Viv/local | Demanda Prevista | Factor de Ocupación de Red | Total Pares de Red de Distribución |
| Vivienda                                       |       4x2       |               1                |        8         |            1,2             |                 10                 |
| Locales (con distribución conocida)            |        1        |               1                |        1         |            1,2             |                 2                  |
| Estancias o instalaciones comunes del Edificio |        2        |               2                |        4         |            1,2             |                 5                  |
| Total                                          |                 |                                |        13        |                            |                 17                 |

El mínimo de acometidas es 13, a los que habría que sumar las acometidas del cuarto de ascensores (se desconoce).

## Cuestión 3

En un edificio de 5 plantas y 2 viviendas por planta, en el que se decida instalar una red de distribución/dispersión formada por cables coaxiales

Seleccione una:
- La topología de la red será en estrella.
- La topología de la red será árbol-rama.
- La topología de la red será indistintamente en estrella o árbol-rama.
- Ninguna de las anteriores es correcta.

### Respuesta

La topología de la red será en estrella.

### Justificación

La topología de la red, al tratarse de una red de cables coaxiales será en estrella cuando el número de PAUs sea inferior a 20 y en árbol-rama cuando el número de PAU sea superior a 20. En este caso el número de **PAU** es: PAU = 5 x 2 (viviendas) = **10**. Por lo que la red de distribución es en estrella.

## Cuestión 4

En un edificio de 7 plantas y 2 viviendas por planta, ascensor, dos estancias comunes, con dos locales comerciales en el que se decida instalar una red de distribución/dispersión formada por cables fibra óptica

Seleccione una:
- La topología de la red será siempre en estrella.
- La topología de la red será siempre árbol-rama.
- La topología de la red podrá ser indistintamente en estrella o árbol-rama.
- Ninguna de las anteriores es correcta.
### Respuesta

La topología de la red será siempre árbol-rama.

### Justificación

La topología de la red, al tratarse de una red de fibra óptica será en estrella cuando el número de PAUs sea inferior a 15 y en árbol-rama cuando el número de PAU sea superior a 15. En este caso el número de **PAU** es: PAU = 2 (locales) + 2 (espacio común) + 7 x 2 (viviendas) = **18**. Por lo que la red de distribución es en árbol-rama.

## Cuestión 5

En un proyecto de ICT la red de distribución de cable coaxial

Seleccione una:
- Debe contemplarse en el proyecto, especificando el cable coaxial a emplear.
- Si no hay operador de cable, no es necesario incluirla en el proyecto pero sí dejar los conductos adecuados para su instalación.
- Se diseña en estrella desde el RITS.
- Ninguna de las anteriores.

### Respuesta

Si no hay operador de cable, no es necesario incluirla en el proyecto pero sí dejar los conductos adecuados para su instalación.

### Justificación

Si no existen operadores de servicio se dejarán las canalizaciones necesarias para atender las previsiones dotadas con los correspondientes hilos-guía.

## Cuestión 6

En un proyecto de ICT la red de distribución estará formada por:

Seleccione una:
- Exclusivamente por cable de pares trenzados.
- En todos los casos incluirá como cable de pares trenzados, cable de pares, cable de fibra óptica y cable coaxial.
- El proyectista podrá proyectar tanto las redes de cable de pares (o pares trenzados), como cable coaxial como fibra óptica en función de la tecnología empleada por los operadores.
- En todo caso siempre incluirá una red de cable coaxial.
### Respuesta

El proyectista podrá proyectar tanto las redes de cable de pares (o pares trenzados), como cable coaxial como fibra óptica en función de la tecnología empleada por los operadores.

### Justificación

El Reglamento incluya tres posibles redes para los servicios de telecomunicaciones de telefonía disponible al público y de banda ancha. El proyectista debe elegir el tipo (o tipos) de cableado a emplear:

- Red de cable de pares trenzados (UTP de 8 hilos) o Red de cable de pares (telefónicos): *El R.D. 346/2011 en su Anexo II Punto 3.1.1 establece que la red de cable de pares trenzados se instalará cuando la distancia entre el punto de interconexión y el punto de acceso al usuario más alejado se a inferior a 100 m. En caso contrario, de que fuese superior, se diseñará e instalará la red de cable de pares*.
- Red de cable coaxial.
- Red de cable de fibra óptica.

## Cuestión 7

En una vivienda con cocina, salón, tres dormitorios y dos baños, se utiliza red de par trenzado para proporcionar los servicios de telefonía y banda ancha, ¿Cuántas tomas individuales, como mínimo, deben ser instaladas?

Seleccione una:
- 7
- 5
- 3
- 2

### Respuesta

7.

### Justificación

Instalaremos los siguientes BAT:
- 1 BAT por cada estancia de la vivienda, y en dos de ellas, 2 BAT (BAT con dos tomas o conectores hembra). Como hay 5 estancias por vivienda, instalaremos 7 BAT por vivienda.

## Cuestión 8

En una vivienda con cocina, salón, tres dormitorios y dos baños, se utiliza red de cable coaxial para proporcionar los servicios de telefonía y banda ancha, ¿Cuántas tomas individuales, como mínimo, deben ser instaladas?

Seleccione una:
- 7
- 5
- 3
- 2

### Respuesta

2.

### Justificación

Por ley, el PAU debe ser un repartidor de dos salidas, al cual llega el cable de la red de Distribución/dispersión o red de dispersión, según el caso y del cual salen los dos cables que constituyen la red interior de usuario. Por tanto, se instalan 2 cables por vivienda.

## Cuestión 9

La red de distribución de cable de pares trenzados (UTP) se utilizará

Seleccione una:
- En aquellas edificaciones en las que la distancia entre el punto de interconexión y el PAU más alejado es inferior a 100 metros.
- En aquellas edificaciones en las que la distancia entre el punto de interconexión y el PAU más alejado es superior a 100 metros.
- Se utilizará indistintamente la red de cable de pares trenzados o la de cable de pares.
- Ninguna de las anteriores respuestas es correcta

### Respuesta

En aquellas edificaciones en las que la distancia entre el punto de interconexión y el PAU más alejado es inferior a 100 metros.
### Justificación

El R.D. 346/2011 en su Anexo II Punto 3.1.1 establece que la red de cable de pares trenzados se instalará cuando la distancia entre el punto de interconexión y el punto de acceso al usuario más alejado se a inferior a 100 m. En caso contrario, de que fuese superior, se diseñará e instalará la red de cable de pares.

## Cuestión 10

La red interior de telefonía y banda ancha dentro de la vivienda del usuario estará constituida por:

Seleccione una:
- Cable de pares trenzados y/o cable coaxial y/o fibra óptica.
- Cable de pares trenzados, cable de pares, fibra óptica y cable coaxial.
- Cable de fibra óptica y cable coaxial.
- Cable de pares y cable de pares trenzados.

### Respuesta

Cable de pares trenzados y/o cable coaxial y/o fibra óptica.

### Justificación

Aun existiendo las tres posibles redes de distribución y dispersión en el edificio, la red interior de la vivienda se realizará solamente **con cable de pares trenzados** en los casos en que la red de distribución y dispersión sea de cable de pares trenzados, cable de pares o cable de fibra óptica y **con cable coaxial** cuando la red de distribución y dispersión sea de cable coaxial.

## Cuestión 11

La red interior de telefonía y banda ancha dentro de la vivienda del usuario:

Seleccione una:
- Será de cable de pares trenzados cuando la red de distribución sea de cable de pares o pares trenzados.
- Será de cable de pares trenzados, con una toma de F.O. en el salón, en los casos que la red de distribución sea de fibra óptica.
- Será de cable coaxial cuando la red de distribución sea de cable coaxial.
- Todas las anteriores son correctas.

### Respuesta

Todas las anteriores son correctas.

### Justificación

Aun existiendo las tres posibles redes de distribución y dispersión en el edificio, la red interior de la vivienda se realizará solamente **con cable de pares trenzados** en los casos en que la red de distribución y dispersión sea de cable de pares trenzados, cable de pares o cable de fibra óptica y **con cable coaxial** cuando la red de distribución y dispersión sea de cable coaxial.

## Cuestión 12

La red interior de usuario en un edificio cuya red de distribución es exclusivamente de fibra óptica será de:

Seleccione una:
- Fibra óptica.
- Cable de pares trenzado (salvo una toma de F.O en estancia principal).
- Cable de pares.
- Cable coaxial

### Respuesta

Cable de pares trenzado (salvo una toma de F.O en estancia principal).

### Justificación

La red de interior de usuario será de pares trenzados, salvo en la estancia principal (salón) que se instalará una acometida de fibra óptica.

## Cuestión 13

Los tipos de redes de distribución de telefonía y banda disponibles al público a configurar en un proyecto de ICT son:

Seleccione una:
- Red de cable de pares (o pares trenzados).
- Red de cable coaxial.
- Red de cable de fibra óptica.
- Todas las anteriores son correctas.

### Respuesta

Todas las anteriores son correctas.
### Justificación

El Reglamento incluya tres posibles redes para los servicios de telecomunicaciones de telefonía disponible al público y de banda ancha. El proyectista debe elegir el tipo (o tipos) de cableado a emplear:

- Red de cable de pares trenzados (UTP de 8 hilos) o Red de cable de pares (telefónicos): *El R.D. 346/2011 en su Anexo II Punto 3.1.1 establece que la red de cable de pares trenzados se instalará cuando la distancia entre el punto de interconexión y el punto de acceso al usuario más alejado se a inferior a 100 m. En caso contrario, de que fuese superior, se diseñará e instalará la red de cable de pares*.
- Red de cable coaxial.
- Red de cable de fibra óptica.

## Cuestión 14

Si se utiliza una red de distribución de cable de pares en un edificio de 10 plantas, con 8 viviendas por planta y planta baja con 6 locales comerciales la red de distribución contará como mínimo con

Seleccione una:
- 166 cables de pares.
- 214 cables de pares.
- 2 cables multipares de 100 pares cada uno.
- 3 cables multipares de 75 pares cada uno.

### Respuesta

3 cables multipares de 75 pares cada uno.

### Justificación

Se pondrá de acuerdo al Reglamento:
- 3 líneas por local.
- 2 líneas por cada estancia común.
- 2 líneas por vivienda.
Por tanto el total de acometidas lo vemos en el siguiente cuadro:

|                                                |                 |                            |                  |                            |                                    |
| ---------------------------------------------- | :-------------: | :------------------------: | :--------------: | :------------------------: | :--------------------------------: |
|                                                | N° de Viviendas | N° de líneas por Viv/local | Demanda Prevista | Factor de Ocupación de Red | Total Pares de Red de Distribución |
| Vivienda                                       |      10x8       |             2              |       160        |            1,2             |                192                 |
| Locales (con distribución conocida)            |        6        |             3              |        18        |            1,2             |                 22                 |
| Estancias o instalaciones comunes del Edificio |        0        |             2              |        0         |            1,2             |                 0                  |
| Total                                          |                 |                            |                  |                            |                214                 |

Obtenido el valor del número de pares necesario (214) se utiliza el cable normalizado de capacidad igual o superior a dicho valor (200).

![[Tipos_cable_pares.png]]

Por tanto, se utilizan 3 cables multipares con dos opciones:
- 2 cables multipares de 100 pares cada uno + 1 cable multipar de 25 pares.
- 3 cables multipares de 75 pares cada uno.