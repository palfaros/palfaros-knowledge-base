---
title: Caso Práctico Tema 3
date: 2025-11-30
---
**Trabajamos en una empresa dedicada, entre otras cosas, a elaborar proyectos de ICT. Sucede que hace años se comenzó a elaborar el proyecto de un edificio y, poco después, se abandonó el trabajo porque el promotor encontró problemas. Hoy, nos comunican que el proyecto se va a reanudar y debemos buscar en el archivo el trabajo que quedó incompleto para terminarlo. Se trata de un proyecto elaborado por un compañero que ya no está en la empresa del que sabemos lo siguiente:**
- **El proyecto se elaboró según la norma antigua (2003).**
- **Se trata de un edificio que consta de bajo, 3 plantas iguales y ático.**
- **En el bajo hay un local comercial y una zona dedicada a trasteros.**
- **En cada planta tipo (1º, 2º y 3º) hay tres viviendas.**
- **En la planta ático también hay tres viviendas (A y B).**
**Disponemos de los planos que dejó nuestro compañero (anexo I). Supondremos que las medidas tomadas sobre los mismos son correctas.**

## Apartado A

**Viendo el esquema de la red de TV, comprobad si la elección de derivadores propuesta es correcta. Comprobad en la Web del fabricante (www.televes.es) si esas referencias siguen siendo válidas (en caso contrario proponed una alternativa). En esa misma Web, buscad referencias adecuadas para los dispositivos no explicitados en el esquema: PAU’s y tomas.**

Los derivadores utilizados son los siguientes:
- Planta Ático: Televés 5446 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544602](https://www.televes.com/es/544602-derivador-easyf-4d-5-2400mhz-20db.html).
- Planta 3: Televés 5445 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544502](https://www.televes.com/es/544502-derivador-easyf-4d-5-2400mhz-16db.html).
- Planta 2: Televés 5445 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544502](https://www.televes.com/es/544502-derivador-easyf-4d-5-2400mhz-16db.html).
- Planta 1: Televés 5444 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544402](https://www.televes.com/es/544402-derivador-easyf-4d-5-2400mhz-12db.html)
- Planta Baja: Televés 5425 (2 salidas). La referencia más actualizada es la siguiente: [Ref. 542503](https://www.televes.com/es/542503-mini-derivador-easyf-2d-5-2400mhz-12db.html).

Las especificaciones de los derivadores son las siguientes:

|        |                   |                           |                           |                                 |                                 |
| :----: | :---------------: | :-----------------------: | :-----------------------: | :-----------------------------: | :-----------------------------: |
| Modelo | Número de salidas | Pérdidas de paso RTV (dB) | Pérdidas de paso SAT (dB) | Pérdidas de derivación RTV (dB) | Pérdidas de derivación SAT (dB) |
| 544602 |         4         |            0.8            |         1 ... 1.8         |               21                |               21                |
| 544502 |         4         |            3.3            |            3.5            |               17                |               16                |
| 544402 |         4         |            3.5            |            4.2            |               13                |              12.5               |
| 542503 |         2         |          3 ... 4          |            4.5            |               14                |               12                |

**La elección de derivadores es correcta, ya que los derivadores situados en las plantas más altas tienen menores pérdidas de paso y mayores pérdidas de derivación (mayor potencia de señal recibida), mientras que los derivadores situados en las plantas bajas tienen mayores pérdidas de paso y menores pérdidas de derivación (menor potencia de señal recibida).**

Con respecto a los dispositivos no explicitados en el esquema (PAUs y tomas), se han escogido los siguientes:
- PAU Repartidor de 4 direcciones: [Televés 544902](https://www.televes.com/es/544902-repartidor-con-pau-easyf-4d-5-2400mhz-9-7-5db.html)
- PAU Repartidor de 5 direcciones: [Televés 5454](https://www.televes.com/es/5454-repartidor-con-pau-easyf-5d-5-2400mhz-11-13db.htmll)
- Tomas Planta 3 y Planta Ático: [Televés 5227](https://www.televes.com/es/5227xx-toma-paso-toma-de-paso-2-conectores-fm-tv-sat-plantas-3-5.html)
- Tomas Planta 2: [Televés 5228](https://www.televes.com/es/5228xx-toma-paso-toma-de-paso-2-conectores-fm-tv-sat-planta-2.html)
- Tomas Planta 1: [Televés 5229](https://www.televes.com/es/5229xx-toma-terminal-toma-terminal-2-conectores-fm-tv-sat-planta-1.html)

Los PAUs escogidos pertenecen a la misma serie que los derviadores: *Serie EasyF*.
Las tomas escogidas son Terrestre + Satélite con 2 Conectores CEI.

## Apartado B

**Con ayuda del esquema y de las características publicadas en la Web para los dispositivos elegidos, calculad las pérdidas para todas las tomas para las frecuencias de 470 MHz y 862 MHz (extremos de la banda de TDT). ¿Cuál es la mejor atenuación?, ¿Cuál es la peor?, a partir de los resultados anteriores calculad el rango permitido para las señales de TDT a la salida de la cabecera.**


