---
title: Caso Práctico Tema 4
date: 2025-12-06
---
**Trabajamos en una empresa dedicada, entre otras cosas, a elaborar proyectos de ICT. Sucede que hace años se comenzó a elaborar el proyecto de un edificio y, poco después, se abandonó el trabajo porque el promotor encontró problemas. Hoy, nos comunican que el proyecto se va a reanudar y debemos buscar en el archivo el trabajo que quedó incompleto para terminarlo. Se trata de un proyecto elaborado por un compañero que ya no está en la empresa del que sabemos lo siguiente:**
- **El proyecto se elaboró según la norma antigua (2003).**
- **Se trata de un edificio que consta de bajo, 3 plantas iguales y ático.**
- **En el bajo hay un local comercial y una zona dedicada a trasteros.**
- **En cada planta tipo (1º, 2º y 3º) hay tres viviendas.**
- **En la planta ático también hay tres viviendas (A y B).**
**Disponemos de los planos que dejó nuestro compañero (anexo I). Supondremos que las medidas tomadas sobre los mismos son correctas.**

## Apartado A

**Si vemos los planos de las plantas tipo y ático veremos los símbolos:**

![[Caso_Practico_Tema_4_Simbolos.png]]

**Estudiando la adaptación a la nueva norma, deberemos sustituir el cableado mediante par telefónico a dos hilos por cable UTP:**
- **¿Podremos aprovechar los planos (la ubicación de tomas y el diseño de canalización)? ¿Es suficiente el número de tomas?** El total de PAUs del edificio es 3·3 (Viviendas Plantas) + 3 (Viviendas Ático) + 1 (Local comercial) = 13 PAUs. Si asumimos 2 PAUs adicionales para las estancias comunes, el total de PAUs del edificio es 15. En una red de pares telefónicos, el Reglamento indica 3 líneas por local, 2 por cada estancia común y 2 por vivienda. En el caso de una red de cable UTP, el Reglamento requiere 1 acometida por local, 2 por cada estancia común y 1 por vivienda. El factor de ocupación utilizado en ambos casos es el mismo: 1.2. Por tanto, el diseño de la canalización ya existente para la red de pares se puede reutilizar perfectamente para la red UTP. La red interior de usuario de la red de pares telefónicos debería utilizar ya cable trenzado. En cuanto a las tomas, se requieren 2 BATs por local, 1 BAT por estancia común y 1 BAT por cada estancia de la vivienda (en 2 de las estancias se pondrán 2 BATs o un BAT doble). En los planos se puede comprobar que existen BATs en cada una de las estancias de cada una de las viviendas. Faltaría el BAT del local comercial.
- **Queremos saber el número de tomas RJ-45 hembra que serán necesarias en PAU’s y viviendas. Si decidimos utilizar tomas dobles cuando sea necesario (en vez de dos tomas separadas), ¿Cuántas tomas simples y cuántas dobles necesitaremos?** De acuerdo a los planos, en cada planta tipo tenemos 1 vivienda con 4 estancias y 2 viviendas con 5 estancias, mientras que en el ático tenemos 1 vivienda con 3 estancias y 2 viviendas con 4 estancias. Por tanto, en cada planta tipo tendremos 1 vivienda con 2 BATs dobles y 2 BATs simples y 2 viviendas con 2 BATs dobles y 3 BATs simples, mientras que en el ático tendremos 1 vivienda con 2 BATs dobles y 1 BAT simple y 2 viviendas con 2 BATs dobles y 2 BATs simples. En total, tendremos 3·(2+3+3)+(1+2+2)=29 BATs o tomas simples y 3·(2+2+2)+1·(2+2+2)=24 BATs o tomas dobles.
- **Calcular el número de cables UTP necesarios en la red de distribución. Si para los paneles de salida utilizamos unidades de 24 tomas hembra cada una, ¿Cuántas nos harán falta?** El número de cables UTP necesarios para la red de distribución será igual al número de acometidas necesarias. El Reglamento requiere 1 acometida por local, 2 por cada estancia común y 1 por vivienda. Por tanto, si asumimos 12 viviendas, 1 local y 2 estancias comunes y aplicamos un factor de ocupación de 1.2, el total de acometidas será 15 para viviendas, 2 para el local comercial y 3 para estancias comunes, es decir, 20 acometidas. Si los paneles de salida tienen 24 tomas hembra cada una, bastará con 1 único panel de 24 tomas hembra en el RITI.
- **Si el cable UTP se compra en bobinas de 100 m que nos permiten cortar y conectorizar según necesidades, obtener una estimación de cuántas nos harán falta en total.** En primer lugar, calculamos la distancia desde el RITI a cada uno de los PAU del edificio, incluyendo las reservas.

|             |                 |                                                 |
| ----------- | --------------- | ----------------------------------------------- |
|             |                 | Distancia (m)                                   |
| Planta Baja |                 |                                                 |
|             | Local comercial | 3.45 + 2.73 = 6.18                              |
|             | Reserva         | 3.45 + 2.73 = 6.18                              |
| Planta 1    |                 |                                                 |
|             | PAU 1ºA         | 3.45 + 2.85 + 4.24  = 10.54                     |
|             | PAU 1ºB         | 3.45 + 2.85 + 4.24  = 10.54                     |
|             | PAU 1ºC         | 3.45 + 2.85 + 0.87  = 7.17                      |
| Planta 2    |                 |                                                 |
|             | PAU 2ºA         | 3.45 + 2.85 + 2.85 + 4.24  = 13.39              |
|             | PAU 2ºB         | 3.45 + 2.85 + 2.85 + 4.24  = 13.39              |
|             | PAU 2ºC         | 3.45 + 2.85 + 2.85 + 0.87  = 10.02              |
|             | Reserva         | 3.45 + 2.85 + 2.85 + 4.24  = 13.39              |
| Planta 3    |                 |                                                 |
|             | PAU 3ºA         | 3.45 + 2.85 + 2.85 + 2.85 + 4.24  = 16.24       |
|             | PAU 3ºB         | 3.45 + 2.85 + 2.85 + 2.85 + 4.24  = 16.24       |
|             | PAU 3ºC         | 3.45 + 2.85 + 2.85 + 2.85 + 0.87  = 12.87       |
|             | Reserva         | 3.45 + 2.85 + 2.85 + 2.85 + 4.24  = 16.24       |
| Ático       |                 |                                                 |
|             | PAU Ático A     | 3.45 + 2.85 + 2.85 + 2.85 + 2.85 + 4.29 = 19.14 |
|             | PAU Ático B     | 3.45 + 2.85 + 2.85 + 2.85 + 2.85 + 4.29 = 19.14 |
|             | PAU Ático C     | 3.45 + 2.85 + 2.85 + 2.85 + 2.85 + 0.92 = 15.77 |
|             | Reserva         | 3.45 + 2.85 + 2.85 + 2.85 + 2.85 + 4.29 = 19.14 |

El **total de la red de distribución** son **225.58 metros**. 

El siguiente paso es calcular los metros de cable utilizados en la red de interior de usuario de cada vivienda. Para ello, se suman las distancias desde el PAU a cada toma de la vivienda, teniendo en cuenta que en las tomas dobles se utilizarán dos cables trenzados desde el PAU, es decir, de la misma longitud. Las tomas dobles se han situado en el salón y en el dormitorio principal de cada vivienda.

|          |                      |                                                                                                                                                     |
| -------- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- |
|          |                      | Total metros de cable                                                                                                                               |
| Planta 1 |                      |                                                                                                                                                     |
|          | Red interior 1ºA     | 2 · (0.89 + 2.81) + (1.53 + 1.48 + 1.39) + 2 · (1.53 + 4.56 + 1.36 + 3.07) + (1.53 + 4.56 + 1.35 + 1.87 + 1.42) = 43.57                             |
|          | Red interior 1ºB     | 2 · (1.12 + 2.79 + 4.44) + (1.12 + 1.73 + 0.96) + (1.12 + 1.89 + 3.84) + (1.12 + 1.89 + 1.37+ 3.63) + 2 · (1.12 + 1.89 + 1.37+ 3.00 + 2.24) = 54.61 |
|          | Red interior 1ºC     | 2 · (2.46 + 6.97 + 3.99) + (2.46 + 1.86 + 3.11) + (2.46 + 0.77 + 2.91 +2.13) + 2 · (2.15 + 1.19 + 0.57 + 3.90) + (1.28 + 4.13 + 0.60) = 64.17       |
| Planta 2 |                      |                                                                                                                                                     |
|          | Red interior 2ºA     | 2 · (0.89 + 2.81) + (1.53 + 1.48 + 1.39) + 2 · (1.53 + 4.56 + 1.36 + 3.07) + (1.53 + 4.56 + 1.35 + 1.87 + 1.42) = 43.57                             |
|          | Red interior 2ºB     | 2 · (1.12 + 2.79 + 4.44) + (1.12 + 1.73 + 0.96) + (1.12 + 1.89 + 3.84) + (1.12 + 1.89 + 1.37+ 3.63) + 2 · (1.12 + 1.89 + 1.37+ 3.00 + 2.24) = 54.61 |
|          | Red interior 2ºC     | 2 · (2.46 + 6.97 + 3.99) + (2.46 + 1.86 + 3.11) + (2.46 + 0.77 + 2.91 +2.13) + 2 · (2.15 + 1.19 + 0.57 + 3.90) + (1.28 + 4.13 + 0.60) = 64.17       |
| Planta 3 |                      |                                                                                                                                                     |
|          | Red interior 3ºA     | 2 · (0.89 + 2.81) + (1.53 + 1.48 + 1.39) + 2 · (1.53 + 4.56 + 1.36 + 3.07) + (1.53 + 4.56 + 1.35 + 1.87 + 1.42) = 43.57                             |
|          | Red interior 3ºB     | 2 · (1.12 + 2.79 + 4.44) + (1.12 + 1.73 + 0.96) + (1.12 + 1.89 + 3.84) + (1.12 + 1.89 + 1.37+ 3.63) + 2 · (1.12 + 1.89 + 1.37+ 3.00 + 2.24) = 54.61 |
|          | Red interior 3ºC     | 2 · (2.46 + 6.97 + 3.99) + (2.46 + 1.86 + 3.11) + (2.46 + 0.77 + 2.91 +2.13) + 2 · (2.15 + 1.19 + 0.57 + 3.90) + (1.28 + 4.13 + 0.60) = 64.17       |
| Ático    |                      |                                                                                                                                                     |
|          | Red Interior Ático A | 2 · (3.26 + 1.24) + 2 · (4.29 + 3.70) + (4.29 + 1.07 + 2.16) = 32.5                                                                                 |
|          | Red Interior Ático B | 2 · (1.30 + 5.64) + (0.44 + 2.60 +1.35) + (0.44 + 2.35 +2.26) + 2 · (0.44 + 2.35 +2.99 + 1.43) = 37.74                                              |
|          | Red Interior Ático C | 2 · (2.06 + 3.27) + (2.06 + 3.63) + 2 · (2.06 + 1.43 + 3.23) + (1.24 + 1.43 + 2.11 + 1.55) = 36.12                                                  |

El **total de la red de distribución** son **593.41 metros**. 

**Los metros totales de cable UTP que harán falta son 818.99 metros. Por tanto, harán falta 9 bobinas de 100 metros**.

## Apartado B

**Respecto a las tomas de “banda ancha” debemos saber que en la norma antigua sólo se dejaban las canalizaciones esperando que el operador completase la instalación. Casi siempre se utilizaban para instalar cableado coaxial, aunque no es obligatorio. Suponiendo que los operadores locales nos comunican que sólo desean cableado UTP y fibra:**
- **¿Podremos aprovechar para algo los planos (la ubicación de tomas y el diseño de canalización)?** E total de PAUs del edificio es 3·3 (Viviendas Plantas) + 3 (Viviendas Ático) + 1 (Local comercial) = 13 PAUs. Si asumimos 2 PAUs adicionales para las estancias comunes, el total de PAUs del edificio es 15. En una red de pares telefónicos, el Reglamento indica 3 líneas por local, 2 por cada estancia común y 2 por vivienda. En el caso de una red de fibra óptica, el Reglamento requiere 1 acometida por local, 2 por cada estancia común y 1 por vivienda. El factor de ocupación utilizado en ambos casos es el mismo: 1.2. Por tanto, el diseño de la canalización ya existente para la red de pares se puede reutilizar perfectamente para la red de fibra óptica.
- **¿Qué número de fibras habrá en la red de distribución?** El Reglamento requiere 1 acometida por local, 2 por cada estancia común y 1 por vivienda. Por tanto, si asumimos 12 viviendas, 1 local y 2 estancias comunes y aplicamos un factor de ocupación de 1.2, el total de acometidas será 15 para viviendas, 2 para el local comercial y 3 para estancias comunes, es decir, 20 acometidas. Cada acometida consiste en un cable de 2 fibras ópticas. Por tanto, la red de distribución contará con un total de 40 fibras ópticas.
- **¿Deberemos cablear en estrella (con fibras individuales) o con cables multifibra?** Al tratarse de una red con menos de 20 PAUs (en concreto, 15 PAUs), la topología de la red de distribución será en estrella con fibras individuales.


