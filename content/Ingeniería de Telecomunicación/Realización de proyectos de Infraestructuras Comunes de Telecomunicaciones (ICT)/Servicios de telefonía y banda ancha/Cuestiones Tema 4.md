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
