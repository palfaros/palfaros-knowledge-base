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

**La elección de derivadores parece correcta, ya que los derivadores situados en las plantas más altas tienen menores pérdidas de paso y mayores pérdidas de derivación (mayor potencia de señal recibida), mientras que los derivadores situados en las plantas bajas tienen mayores pérdidas de paso y menores pérdidas de derivación (menor potencia de señal recibida). Sin embargo, el fabricante Televés recomienda utilizar el derivador 544402 únicamente para la primera planta, en este caso, la planta baja y el derivador 544502 en segunda y tercera planta, en este caso, planta primera y segunda. Por tanto, la elección correcta sería 5425 en planta baja (P1), 5445 en primera y segunda planta (P2 y P3), 5446 en tercero y ático (P4 y P5).**

Los derivadores utilizados finalmente serán los siguientes:
- Planta Ático: Televés 5446 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544602](https://www.televes.com/es/544602-derivador-easyf-4d-5-2400mhz-20db.html).
- Planta 3: Televés 5446 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544602](https://www.televes.com/es/544602-derivador-easyf-4d-5-2400mhz-20db.html).
- Planta 2: Televés 5445 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544502](https://www.televes.com/es/544502-derivador-easyf-4d-5-2400mhz-16db.html).
- Planta 1: Televés 5445 (4 salidas). La referencia más actualizada es la siguiente: [Ref. 544502](https://www.televes.com/es/544502-derivador-easyf-4d-5-2400mhz-16db.html).
- Planta Baja: Televés 5425 (2 salidas). La referencia más actualizada es la siguiente: [Ref. 542503](https://www.televes.com/es/542503-mini-derivador-easyf-2d-5-2400mhz-12db.html).

Con respecto a los dispositivos no explicitados en el esquema (PAUs y tomas), se han escogido los siguientes:
- PAU Repartidor de 4 direcciones: [Televés 544902](https://www.televes.com/es/544902-repartidor-con-pau-easyf-4d-5-2400mhz-9-7-5db.html)
- PAU Repartidor de 5 direcciones: [Televés 5454](https://www.televes.com/es/5454-repartidor-con-pau-easyf-5d-5-2400mhz-11-13db.html)
- Tomas: [Televés 5229](https://www.televes.com/es/5229xx-toma-terminal-toma-terminal-2-conectores-fm-tv-sat-planta-1.html)

Los PAUs escogidos pertenecen a la misma serie que los derivadores: *Serie EasyF*.
Las toma escogida es Terrestre + Satélite con 2 Conectores CEI, terminal y no separadora. 

## Apartado B

**Con ayuda del esquema y de las características publicadas en la Web para los dispositivos elegidos, calculad las pérdidas para todas las tomas para las frecuencias de 470 MHz y 862 MHz (extremos de la banda de TDT). ¿Cuál es la mejor atenuación?, ¿Cuál es la peor?, a partir de los resultados anteriores calculad el rango permitido para las señales de TDT a la salida de la cabecera.**

En primer lugar, se va a realizar una lista con todos los elementos de atenuación para cada una de las tomas (en total, 4 + 4 +3 + 3 · (5 + 5 + 4) = 53 tomas):
- Ático:
	- Vivienda 1:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,17 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 5,83 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,17 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 6,19 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,17 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 7,22 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,17 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 6,62 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 2:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,54 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 5,00 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,54 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 8,49 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,54 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,67 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 3:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,94 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 7,88 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,94 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,89 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,94 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 6,65 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,94 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 8,81 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
- Planta 3:
	- Vivienda 1:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 13,92 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 6,13 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 8,00 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 7,74 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 5:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 6,51 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 2:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,20 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,90 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,49 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,70 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 3:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 9,03 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 4,31 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 7,35 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 8,51 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 5:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5446 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 10,12 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
- Planta 2:
	- Vivienda 1:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 13,92 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 6,13 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 8,00 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 7,74 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 5:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 6,51 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 2:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)			
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,20 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)	
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,90 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)	
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,49 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)	
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,70 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 3:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 9,03 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 4,31 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 7,35 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 8,51 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 5:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 10,12 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
- Planta 1:
	- Vivienda 1:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 13,92 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 6,13 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 8,00 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 7,74 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 5:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 1,12 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 6,51 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 2:
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)			
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,20 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 4,90 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,49 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,49 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 544902 (4D)
			- Pérdidas 9,70 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
	- Vivienda 3:		
		- Toma 1:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 9,03 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 2:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 4,31 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 3:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 7,35 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 4:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 8,51 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229
		- Toma 5:
			- Pérdidas 3 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5446 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de paso derivador Televés 5445 (4D)
			- Pérdidas 2,85 metros de cable coaxial
			- Pérdidas de derivación derivador Televés 5445 (4D)
			- Pérdidas 4,84 metros de cable coaxial
			- Pérdidas de inserción o paso PAU Televés 5454 (5D)
			- Pérdidas 10,12 metros de cable coaxial
			- Pérdidas derivación toma Televés 5229

En segundo lugar, se ha elaborado una tabla con las pérdidas introducidas por cada elemento de conexión:

|                          |                             |         |         |
| ------------------------ | --------------------------- | :-----: | :-----: |
|                          |                             | 470 MHz | 862 MHz |
| Cable coaxial T-100 241  |                             |         |         |
|                          | Pérdidas (dB/m)             |  0,12   |  0,15   |
| Derivador 544602         |                             |         |         |
|                          | Pérdidas de paso (dB)       |   0,8   |   0,8   |
|                          | Pérdidas de derivación (dB) |   21    |   21    |
| Derivador 544502         |                             |         |         |
|                          | Pérdidas de paso (dB)       |   3,3   |   3,3   |
|                          | Pérdidas de derivación (dB) |   17    |   17    |
| Derivador 544402         |                             |         |         |
|                          | Pérdidas de paso (dB)       |   3,5   |   3,5   |
|                          | Pérdidas de derivación (dB) |   13    |   13    |
| Derivador 542503         |                             |         |         |
|                          | Pérdidas de paso (dB)       |    4    |    4    |
|                          | Pérdidas de derivación (dB) |   14    |   14    |
| PAU Repartidor 4D 544902 |                             |         |         |
|                          | Pérdidas de paso (dB)       |    9    |    9    |
| PAU Repartidor 5D 5454   |                             |         |         |
|                          | Pérdidas de paso (dB)       |   13    |   13    |
| Toma 5229                |                             |         |         |
|                          | Pérdidas de derivación (dB) |    4    |    4    |

Una vez se dispone de la topología completa de la red hacia cada toma y las pérdidas de cada elemento de conexión se procede a realizar los cálculos de atenuación:

|              |            |                |                                                      |                    |         |         |
| ------------ | ---------- | -------------- | ---------------------------------------------------- | :----------------: | :-----: | :-----: |
|              |            |                |                                                      | Longitud cable (m) | 470 MHz | 862 MHz |
| Planta Ático |            |                |                                                      |                    |         |         |
|              | Vivienda 1 |                |                                                      |                    |         |         |
|              |            | Toma 1, V1, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,17 metros de cable coaxial                |        1,17        |  0,14   |  0,18   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 5,83 metros de cable coaxial                |        5,83        |  0,70   |  0,87   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,20  |  35,50  |
|              |            | Toma 2, V1, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,17 metros de cable coaxial                |        1,17        |  0,14   |  0,18   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 6,19 metros de cable coaxial                |        6,19        |  0,74   |  0,93   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,24  |  35,55  |
|              |            | Toma 3, V1, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,17 metros de cable coaxial                |        1,17        |  0,14   |  0,18   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 7,22 metros de cable coaxial                |        7,22        |  0,87   |  1,08   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,37  |  35,71  |
|              |            | Toma 4, V1, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,17 metros de cable coaxial                |        1,17        |  0,14   |  0,18   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 6,62 metros de cable coaxial                |        6,62        |  0,79   |  0,99   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,29  |  35,62  |
|              | Vivienda 2 |                |                                                      |                    |         |         |
|              |            | Toma 1, V2, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,54 metros de cable coaxial                |        4,54        |  0,54   |  0,68   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 5,00 metros de cable coaxial                |         5          |  0,60   |  0,75   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,50  |  35,88  |
|              |            | Toma 2, V2, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,54 metros de cable coaxial                |        4,54        |  0,54   |  0,68   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 8,49 metros de cable coaxial                |        8,49        |  1,02   |  1,27   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,92  |  36,40  |
|              |            | Toma 3, V2, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,54 metros de cable coaxial                |        4,54        |  0,54   |  0,68   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,67 metros de cable coaxial                |        9,67        |  1,16   |  1,45   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  36,07  |  36,58  |
|              | Vivienda 3 |                |                                                      |                    |         |         |
|              |            | Toma 1, V3, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,94 metros de cable coaxial                |        4,94        |  0,59   |  0,74   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 7,88 metros de cable coaxial                |        7,88        |  0,95   |  1,18   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,90  |  36,37  |
|              |            | Toma 2, V3, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,94 metros de cable coaxial                |        4,94        |  0,59   |  0,74   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,89 metros de cable coaxial                |        4,89        |  0,59   |  0,73   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,54  |  35,92  |
|              |            | Toma 3, V3, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,94 metros de cable coaxial                |        4,94        |  0,59   |  0,74   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 6,65 metros de cable coaxial                |        6,65        |  0,80   |  1,00   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,75  |  36,19  |
|              |            | Toma 4, V3, PA |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,94 metros de cable coaxial                |        4,94        |  0,59   |  0,74   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 8,81 metros de cable coaxial                |        8,81        |  1,06   |  1,32   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  36,01  |  36,51  |
| Planta 3     |            |                |                                                      |                    |         |         |
|              | Vivienda 1 |                |                                                      |                    |         |         |
|              |            | Toma 1, V1, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 13,92 metros de cable coaxial               |       13,92        |  1,67   |  2,09   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  41,31  |  41,93  |
|              |            | Toma 2, V1, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 6,13 metros de cable coaxial                |        6,13        |  0,74   |  0,92   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,37  |  40,77  |
|              |            | Toma 3, V1, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 8,00 metros de cable coaxial                |         8          |  0,96   |  1,20   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,60  |  41,05  |
|              |            | Toma 4, V1, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 7,74 metros de cable coaxial                |        7,74        |  0,93   |  1,16   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,57  |  41,01  |
|              |            | Toma 5, V1, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 6,51 metros de cable coaxial                |        6,51        |  0,78   |  0,98   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,42  |  40,82  |
|              | Vivienda 2 |                |                                                      |                    |         |         |
|              |            | Toma 1, V2, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,20 metros de cable coaxial                |        4,2         |  0,50   |  0,63   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  36,54  |  36,98  |
|              |            | Toma 2, V2, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,90 metros de cable coaxial                |        4,9         |  0,59   |  0,74   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  36,63  |  37,09  |
|              |            | Toma 3, V2, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,49 metros de cable coaxial                |        9,49        |  1,14   |  1,42   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  37,18  |  37,77  |
|              |            | Toma 4, V2, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,70 metros de cable coaxial                |        9,7         |  1,16   |  1,46   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  37,20  |  37,81  |
|              | Vivienda 3 |                |                                                      |                    |         |         |
|              |            | Toma 1, V3, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 9,03 metros de cable coaxial                |        9,03        |  1,08   |  1,35   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  41,17  |  41,76  |
|              |            | Toma 2, V3, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 4,31 metros de cable coaxial                |        4,31        |  0,52   |  0,65   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,60  |  41,05  |
|              |            | Toma 3, V3, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 7,35 metros de cable coaxial                |        7,35        |  0,88   |  1,10   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,96  |  41,51  |
|              |            | Toma 4, V3, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 8,51 metros de cable coaxial                |        8,51        |  1,02   |  1,28   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  41,10  |  41,68  |
|              |            | Toma 5, V3, P3 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5446 (4D)   |                    |  21,00  |  21,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 10,12 metros de cable coaxial               |       10,12        |  1,21   |  1,52   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  41,30  |  41,92  |
| Planta 2     |            |                |                                                      |                    |         |         |
|              | Vivienda 1 |                |                                                      |                    |         |         |
|              |            | Toma 1, V1, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 13,92 metros de cable coaxial               |       13,92        |  1,67   |  2,09   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 38,45 | 39,16 |
|              |            | Toma 2, V1, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 6,13 metros de cable coaxial                |        6,13        |  0,74   |  0,92   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 37,51 | 37,99 |
|              |            | Toma 3, V1, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 8,00 metros de cable coaxial                |         8          |  0,96   |  1,20   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 37,74 | 38,27 |
|              |            | Toma 4, V1, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 7,74 metros de cable coaxial                |        7,74        |  0,93   |  1,16   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 37,71 | 38,23 |
|              |            | Toma 5, V1, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 6,51 metros de cable coaxial                |        6,51        |  0,78   |  0,98   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 37,56 | 38,05 |
|              | Vivienda 2 |                |                                                      |                    |         |         |
|              |            | Toma 1, V2, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,20 metros de cable coaxial                |        4,2         |  0,50   |  0,63   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 33,69 | 34,21 |
|              |            | Toma 2, V2, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,90 metros de cable coaxial                |        4,9         |  0,59   |  0,74   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 33,77 | 34,31 |
|              |            | Toma 3, V2, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,49 metros de cable coaxial                |        9,49        |  1,14   |  1,42   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 34,32 | 35,00 |
|              |            | Toma 4, V2, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,70 metros de cable coaxial                |        9,7         |  1,16   |  1,46   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    | 34,35 | 35,03 |
|              | Vivienda 3 |                |                                                      |                    |         |         |
|              |            | Toma 1, V3, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 9,03 metros de cable coaxial                |        9,03        |  1,08   |  1,35   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,81  |  41,49  |
|              |            | Toma 2, V3, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 4,31 metros de cable coaxial                |        4,31        |  0,52   |  0,65   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,24  |  40,78  |
|              |            | Toma 3, V3, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 7,35 metros de cable coaxial                |        7,35        |  0,88   |  1,10   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,61  |  41,23  |
|              |            | Toma 4, V3, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 8,51 metros de cable coaxial                |        8,51        |  1,02   |  1,28   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,75  |  41,41  |
|              |            | Toma 5, V3, P2 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 10,12 metros de cable coaxial               |       10,12        |  1,21   |  1,52   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,94  |  41,65  |
| Planta 1     |            |                |                                                      |                    |         |         |
|              | Vivienda 1 |                |                                                      |                    |         |         |
|              |            | Toma 1, V1, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 13,92 metros de cable coaxial               |       13,92        |  1,67   |  2,09   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,59  |  41,39  |
|              |            | Toma 2, V1, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 6,13 metros de cable coaxial                |        6,13        |  0,74   |  0,92   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  39,66  |  40,22  |
|              |            | Toma 3, V1, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 8,00 metros de cable coaxial                |         8          |  0,96   |  1,20   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  39,88  |  40,50  |
|              |            | Toma 4, V1, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 7,74 metros de cable coaxial                |        7,74        |  0,93   |  1,16   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  39,85  |  40,46  |
|              |            | Toma 5, V1, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 1,12 metros de cable coaxial                |        1,12        |  0,13   |  0,17   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 6,51 metros de cable coaxial                |        6,51        |  0,78   |  0,98   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  39,70  |  40,28  |
|              | Vivienda 2 |                |                                                      |                    |         |         |
|              |            | Toma 1, V2, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,20 metros de cable coaxial                |        4,2         |  0,50   |  0,63   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,83  |  36,44  |
|              |            | Toma 2, V2, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 4,90 metros de cable coaxial                |        4,9         |  0,59   |  0,74   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  35,91  |  36,54  |
|              |            | Toma 3, V2, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,49 metros de cable coaxial                |        9,49        |  1,14   |  1,42   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  36,46  |  37,23  |
|              |            | Toma 4, V2, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,49 metros de cable coaxial                |        4,49        |  0,54   |  0,67   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 544902 (4D) |                    |  9,00   |  9,00   |
|              |            |                | Pérdidas 9,70 metros de cable coaxial                |        9,7         |  1,16   |  1,46   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  36,49  |  37,26  |
|              | Vivienda 3 |                |                                                      |                    |         |         |
|              |            | Toma 1, V3, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 9,03 metros de cable coaxial                |        9,03        |  1,08   |  1,35   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,45  |  41,21  |
|              |            | Toma 2, V3, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 4,31 metros de cable coaxial                |        4,31        |  0,52   |  0,65   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  39,88  |  40,51  |
|              |            | Toma 3, V3, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 7,35 metros de cable coaxial                |        7,35        |  0,88   |  1,10   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,25  |  40,96  |
|              |            | Toma 4, V3, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 8,51 metros de cable coaxial                |        8,51        |  1,02   |  1,28   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,39  |  41,14  |
|              |            | Toma 5, V3, P1 |                                                      |                    |         |         |
|              |            |                | Pérdidas 3 metros de cable coaxial                   |         3          |  0,36   |  0,45   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5446 (4D)         |                    |  0,80   |  0,80   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de paso derivador Televés 5445 (4D)         |                    |  3,30   |  3,30   |
|              |            |                | Pérdidas 2,85 metros de cable coaxial                |        2,85        |  0,34   |  0,43   |
|              |            |                | Pérdidas de derivación derivador Televés 5445 (4D)   |                    |  17,00  |  17,00  |
|              |            |                | Pérdidas 4,84 metros de cable coaxial                |        4,84        |  0,58   |  0,73   |
|              |            |                | Pérdidas de inserción o paso PAU Televés 5454 (5D)   |                    |  13,00  |  13,00  |
|              |            |                | Pérdidas 10,12 metros de cable coaxial               |       10,12        |  1,21   |  1,52   |
|              |            |                | Pérdidas derivación toma Televés 5229                |                    |  4,00   |  4,00   |
|              |            |                | Atenuación Total                                     |                    |  40,58  |  41,38  |

En resumen, la atenuación en cada toma es la siguiente:

|              |            |                |                  |           |           |
| ------------ | ---------- | -------------- | ---------------- | :-------: | :-------: |
|              |            |                |                  |  470 MHz  |  862 MHz  |
| Planta Ático |            |                |                  |           |           |
|              | Vivienda 1 |                |                  |           |           |
|              |            | Toma 1, V1, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,20   |   35,50   |
|              |            | Toma 2, V1, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,24   |   35,55   |
|              |            | Toma 3, V1, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,37   |   35,71   |
|              |            | Toma 4, V1, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,29   |   35,62   |
|              | Vivienda 2 |                |                  |           |           |
|              |            | Toma 1, V2, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,50   |   35,88   |
|              |            | Toma 2, V2, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,92   |   36,40   |
|              |            | Toma 3, V2, PA |                  |           |           |
|              |            |                | Atenuación Total |   36,07   |   36,58   |
|              | Vivienda 3 |                |                  |           |           |
|              |            | Toma 1, V3, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,90   |   36,37   |
|              |            | Toma 2, V3, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,54   |   35,92   |
|              |            | Toma 3, V3, PA |                  |           |           |
|              |            |                | Atenuación Total |   35,75   |   36,19   |
|              |            | Toma 4, V3, PA |                  |           |           |
|              |            |                | Atenuación Total |   36,01   |   36,51   |
| Planta 3     |            |                |                  |           |           |
|              | Vivienda 1 |                |                  |           |           |
|              |            | Toma 1, V1, P3 |                  |           |           |
|              |            |                | Atenuación Total |   41,31   |   41,93   |
|              |            | Toma 2, V1, P3 |                  |           |           |
|              |            |                | Atenuación Total |   40,37   |   40,77   |
|              |            | Toma 3, V1, P3 |                  |           |           |
|              |            |                | Atenuación Total |   40,60   |   41,05   |
|              |            | Toma 4, V1, P3 |                  |           |           |
|              |            |                | Atenuación Total |   40,57   |   41,01   |
|              |            | Toma 5, V1, P3 |                  |           |           |
|              |            |                | Atenuación Total |   40,42   |   40,82   |
|              | Vivienda 2 |                |                  |           |           |
|              |            | Toma 1, V2, P3 |                  |           |           |
|              |            |                | Atenuación Total |   36,54   |   36,98   |
|              |            | Toma 2, V2, P3 |                  |           |           |
|              |            |                | Atenuación Total |   36,63   |   37,09   |
|              |            | Toma 3, V2, P3 |                  |           |           |
|              |            |                | Atenuación Total |   37,18   |   37,77   |
|              |            | Toma 4, V2, P3 |                  |           |           |
|              |            |                | Atenuación Total |   37,20   |   37,81   |
|              | Vivienda 3 |                |                  |           |           |
|              |            | Toma 1, V3, P3 |                  |           |           |
|              |            |                | Atenuación Total |   41,17   |   41,76   |
|              |            | Toma 2, V3, P3 |                  |           |           |
|              |            |                | Atenuación Total |   40,60   |   41,05   |
|              |            | Toma 3, V3, P3 |                  |           |           |
|              |            |                | Atenuación Total |   40,96   |   41,51   |
|              |            | Toma 4, V3, P3 |                  |           |           |
|              |            |                | Atenuación Total |   41,10   |   41,68   |
|              |            | Toma 5, V3, P3 |                  |           |           |
|              |            |                | Atenuación Total |   41,30   |   41,92   |
| Planta 2     |            |                |                  |           |           |
|              | Vivienda 1 |                |                  |           |           |
|              |            | Toma 1, V1, P2 |                  |           |           |
|              |            |                | Atenuación Total |   38,45   |   39,16   |
|              |            | Toma 2, V1, P2 |                  |           |           |
|              |            |                | Atenuación Total |   37,51   |   37,99   |
|              |            | Toma 3, V1, P2 |                  |           |           |
|              |            |                | Atenuación Total |   37,74   |   38,27   |
|              |            | Toma 4, V1, P2 |                  |           |           |
|              |            |                | Atenuación Total |   37,71   |   38,23   |
|              |            | Toma 5, V1, P2 |                  |           |           |
|              |            |                | Atenuación Total |   37,56   |   38,05   |
|              | Vivienda 2 |                |                  |           |           |
|              |            | Toma 1, V2, P2 |                  |           |           |
|              |            |                | Atenuación Total | **33,69** |   34,21   |
|              |            | Toma 2, V2, P2 |                  |           |           |
|              |            |                | Atenuación Total |   33,77   |   34,31   |
|              |            | Toma 3, V2, P2 |                  |           |           |
|              |            |                | Atenuación Total |   34,32   |   35,00   |
|              |            | Toma 4, V2, P2 |                  |           |           |
|              |            |                | Atenuación Total |   34,35   |   35,03   |
|              | Vivienda 3 |                |                  |           |           |
|              |            | Toma 1, V3, P2 |                  |           |           |
|              |            |                | Atenuación Total |   38,31   |   38,99   |
|              |            | Toma 2, V3, P2 |                  |           |           |
|              |            |                | Atenuación Total |   37,74   |   38,28   |
|              |            | Toma 3, V3, P2 |                  |           |           |
|              |            |                | Atenuación Total |   38,11   |   38,73   |
|              |            | Toma 4, V3, P2 |                  |           |           |
|              |            |                | Atenuación Total |   38,25   |   38,91   |
|              |            | Toma 5, V3, P2 |                  |           |           |
|              |            |                | Atenuación Total |   38,44   |   39,15   |
| Planta 1     |            |                |                  |           |           |
|              | Vivienda 1 |                |                  |           |           |
|              |            | Toma 1, V1, P1 |                  |           |           |
|              |            |                | Atenuación Total |   42,09   | **42,89** |
|              |            | Toma 2, V1, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,16   |   41,72   |
|              |            | Toma 3, V1, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,38   |   42,00   |
|              |            | Toma 4, V1, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,35   |   41,96   |
|              |            | Toma 5, V1, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,20   |   41,78   |
|              | Vivienda 2 |                |                  |           |           |
|              |            | Toma 1, V2, P1 |                  |           |           |
|              |            |                | Atenuación Total |   37,33   |   37,94   |
|              |            | Toma 2, V2, P1 |                  |           |           |
|              |            |                | Atenuación Total |   37,41   |   38,04   |
|              |            | Toma 3, V2, P1 |                  |           |           |
|              |            |                | Atenuación Total |   37,96   |   38,73   |
|              |            | Toma 4, V2, P1 |                  |           |           |
|              |            |                | Atenuación Total |   37,99   |   38,76   |
|              | Vivienda 3 |                |                  |           |           |
|              |            | Toma 1, V3, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,95   |   42,71   |
|              |            | Toma 2, V3, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,38   |   42,01   |
|              |            | Toma 3, V3, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,75   |   42,46   |
|              |            | Toma 4, V3, P1 |                  |           |           |
|              |            |                | Atenuación Total |   41,89   |   42,64   |
|              |            | Toma 5, V3, P1 |                  |           |           |
|              |            |                | Atenuación Total |   42,08   |   42,88   |

La **mejor atenuación** es la de la **Toma 1 de la Vivienda 2 de la Planta 2**, de **33,69 dB**.
La **peor atenuación** es la de la **Toma 1 de la Vivienda 1 de la Planta 1**, de **42,89 dB**.

La norma nos obliga a que, en cada toma de TDT, tengamos un nivel de señal entre 47 y 70 dBμV. Vamos a calcular los niveles de señal en cabecera que aseguran el cumplimiento de esa norma:

- Para que siempre estemos por encima de 47 dBμV, la cabecera deberá **COMO MÍNIMO**, producir ese nivel en la **PEOR TOMA**. Por tanto, el nivel en cabecera, debe cumplir la desigualdad L<sub>cab</sub> ≥ L<sub>min</sub> + AT<sub>max</sub> = 47 + 42,89 = 89,89 dBμV.
- Para que siempre estemos por debajo de 70 dBμV, la cabecera deberá **COMO MÁXIMO**, producir ese nivel en la **MEJOR TOMA**. Por tanto, el nivel en cabecera, debe cumplir la desigualdad L<sub>cab</sub> ≤ L<sub>max</sub> + AT<sub>min</sub> = 70 + 33,69 = 103,69 dBμV.

**El rango permitido en la cabecera es 89,89 - 103,69 dBμV**. Por tanto, la instalación es viable.