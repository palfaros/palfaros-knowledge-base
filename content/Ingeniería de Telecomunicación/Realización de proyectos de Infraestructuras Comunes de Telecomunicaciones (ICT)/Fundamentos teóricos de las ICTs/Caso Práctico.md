---
title: Caso Práctico
date: 2025-11-19
---
**En una vivienda unifamiliar se utiliza el amplificador de mástil Televés 5356 que tiene 40 dB de ganancia en toda la banda de TV y presenta un factor de ruido de 4 dB. Supondremos que la temperatura de ruido a la salida de la antena es de 50 ºK y que el nivel de señal en ese mismo punto es de 80 dBµV (impedancia de referencia 75 Ω). Además, sabemos que la antena está unida al amplificador por 1 m de cable T-100 (suponer 0.154 dB de atenuación por metro) a temperatura física 300 ºK.**

## Apartado A

**Dibujad un esquema del sistema y calculad la relación señal a ruido a la salida del amplificador. Datos: ancho de banda: 8 MHz, constante de Boltzman: 1,38·10<sup>-23</sup> W/(ºK·Hz), temperatura de referencia (T<sub>0</sub>): 290 ºK.**

![[Caso_práctico.png]]

### Cálculo de potencia de señal


### Cálculo de potencia de ruido


## Apartado B

**Después del amplificador tenemos la instalación de la figura, donde el cable vuelve a ser televés T-100 a 300 ºK:**

![[Esquema_ICT_chalet.png]]

**Sabemos que las “cajas” (5435, 5437 y 5438) son repartidores, esto es: dispositivos que consiguen crear dos (o más) copias de la señal de entrada idénticas en información pero atenuadas.**

### Características de los equipos

#### Repartidores
|                                           |             |             |             |
| ----------------------------------------- | ----------- | ----------- | ----------- |
| Tipo                                      | 5435        | 5437        | 5438        |
| Banda                                     | 15-2150 MHz | 15-2150 MHz | 15-2150 MHz |
| Nº salidas                                | 2           | 4           | 6           |
| Pérdidas de distribución (V/U) 47-862 MHz | 4,5±0,25    | 7,5±0,25    | 8,5±0,25    |
| Pérdidas de distribución FI 950-2150 MHz  | 4,5±0,25    | 7,5±0,25    | 8,5±0,25    |

#### Toma de usuario
|                                           |             |
| ----------------------------------------- | ----------- |
| Tipo                                      | 5226        |
| Banda                                     | 15-2150 MHz |
| Nº salidas                                | 2           |
| Pérdidas de distribución (V/U) 47-862 MHz | 0,6±0,10    |
| Pérdidas de distribución FI 950-2150 MHz  | 0,6±0,10    |
#### Cable coaxial
|                       |             |
| --------------------- | ----------- |
| Tipo                  | T-100       |
| Atenuación a 47 MHz   | 4dB/100m    |
| Atenuación a 862 MHz  | 15,4dB/100m |
| Atenuación a 950 MHz  | 20dB/100m   |
| Atenuación a 2150 MHz | 30dB/100m   |
### Apartado B.1

**¿Cuál será la toma de la casa con peor señal?**

### Apartado B.2

**¿Cuál es el valor de relación SNR en ella?**

### Apartado B.3

**¿Cuál es la respuesta amplitud/frecuencia en banda de la red (en la peor toma)?**

### Apartado B.4

**¿Cuál será la relación señal/intermodulación (banda V/U) si consideramos que el amplificador tiene un nivel de salida máximo S<sub>max</sub>=114 dBμV (S/I=35dB) y deseamos que en la toma de usuario se disponga de un nivel de señal de 55dBμV? Nota: suponemos que se amplifican 12 canales.**

