---
title: Caso Práctico
date: 2025-11-19
---
**En una vivienda unifamiliar se utiliza el amplificador de mástil Televés 5356 que tiene 40 dB de ganancia en toda la banda de TV y presenta un factor de ruido de 4 dB. Supondremos que la temperatura de ruido a la salida de la antena es de 50 ºK y que el nivel de señal en ese mismo punto es de 80 dBµV (impedancia de referencia 75 Ω). Además, sabemos que la antena está unida al amplificador por 1 m de cable T-100 (suponer 0.154 dB de atenuación por metro) a temperatura física 300 ºK.**

## Apartado A

**Dibujad un esquema del sistema y calculad la relación señal a ruido a la salida del amplificador. Datos: ancho de banda: 8 MHz, constante de Boltzman: 1,38·10<sup>-23</sup> W/(ºK·Hz), temperatura de referencia (T<sub>0</sub>): 290 ºK.**

![[Caso_práctico.png]]

En segundo lugar, tenemos los siguientes datos:
- Antena:
	- Temperatura de ruido a la salida de antena (temperatura de antena): 50 K.
	- Nivel de señal a la salida de antena: 80 dBµV.
	- Impedancia referencia: 75 Ω.
- Cable T-100:
	- Longitud: 1 m.
	- Temperatura física: 300 K.
	- Atenuación: 0.154 dB/m.
- Amplificador Televés 5356:
	- Ganancia: 40 dB.
	- Factor de ruido: 4 dB.
- Ancho de banda: 8 MHz.

Tenemos 3 puntos de interés: (1), (2) y (3) y dos cuadripolos:

- El primero es un atenuador con atenuación A<sub>1</sub> = 0.154 dB (ganancia G<sub>1</sub> = -0.154 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física).
- El segundo es un amplificador, ganancia G<sub>2</sub> = 40 dB y factor de ruido 4 dB.

**El objetivo del ejercicio es conocer la relación portadora a ruido en el punto (3)**. Para conocer la relación portadora a ruido en el punto 3 podemos calcular las potencias de señal y ruido en dicho punto.
### Cálculo de potencia de señal

El primer problema es que no tenemos la potencia recibida en la antena sino el nivel (tensión) que se mide en la misma. Podemos convertir los dBµV en voltios y aplicar la fórmula de la potencia, pero también podemos hacer toda la operación en dB:

$$
\begin{aligned}
P_{(1)}(dBW) &= 10\log_{10}(v[V]^2/z_0[\Omega]) = \\
&=10\log_{10}(v[V]^2) - 10\log_{10}(z_0[\Omega]) = 20\log_{10}(v[V]) - 10\log_{10}(z_0[\Omega]) = \\
&= 20\log_{10}(v[\mu V]·10^{-6}) - 10\log_{10}(z_0[\Omega]) = \\
&=20\log_{10}(v[\mu V]) - 120\log_{10}(10) - 10\log_{10}(z_0[\Omega]) = \\
&= L(dB\mu V) - 120 - 10\log_{10}(z_0[\Omega]) = \\
&=80 dB\mu V - 120 - 10\log_{10}(75\Omega) = 80 dB\mu V - 120 - 18.75 dB\Omega =  \\
&= -58.75 dBW
\end{aligned}
$$

Una vez calculada la potencia de señal en el punto 1, la potencia de señal en el punto 3 se calcula fácilmente:

$$
\begin{aligned}
P_{(3)}(dBW) &= P_{(1)}(dBW) -A_1(dB) + G_2 (dB) = \\
&=-58.75 dBW - 0.154 dB/m · 1 m + 40 dB = \\
&=-18.904 dBW
\end{aligned}
$$

### Cálculo de potencia de ruido

El cálculo de la potencia de ruido a la salida del amplificador se va a realizar utilizando temperaturas y unidades naturales. Conocemos: la temperatura de entrada T<sub>ant</sub> en el punto (1), si calculamos la del atenuador (T<sub>1</sub>) estará también en el punto (1), y la del amplificador (T<sub>2</sub>) la obtendremos en el punto (2) (a la entrada). En el punto (3) la temperatura de ruido total será:

$$
T_{(3)} = T_{(ant)}g_1g_2 + T_1g_1g_2 +T_2g_2
$$

Donde:

$$
g_1 = \frac{1}{a_1} = 10^{-0.15/10} = 0.966
$$

$$
g_2 = 10^{40/10} = 10000
$$

Para conocer T<sub>1</sub> aplicamos la fórmula de los atenuadores:

$$
T_1 = T_f(a_1-1) = 300(10^{0.15/10}-1) = 10.54 K 
$$

Y para conocer T<sub>2</sub> utilizamos la definición de factor de ruido:

$$
T_2 = T_0(f_2-1) = 290K · (10^{4/10}-1) = 438.45 K
$$

Conociendo todas las temperaturas, con la fórmula anterior, ya conocemos la temperatura total de ruido en el punto 3:

$$
\begin{aligned}
T_{(3)} &= T_{(ant)}g_1g_2 + T_1g_1g_2 +T_2g_2 = \\
&=50K·0.966·10000 + 10.54K·0.966·10000 + 43845K·10000 = \\
&=(50K + 10.54K)·0.966·10000 + 438.45K·10000 = \\
&=584816.4K + 4384500K = 4969316.4 K = \\
&=4.97·10^6 K
\end{aligned}
$$

Una vez conocida la temperatura total de ruido en el punto 3 se puede calcular la potencia total de ruido en dicho punto.

$$
\begin{aligned}
N_{(3)}(dBW) &= 10\log_{10}(kT_{(3)}B_W) = \\
&=10\log_{10}(1.381·10^{-23}W/(K·Hz)·4.97·10^6K·8·10^6Hz) = \\
&=-92.604 dBW
\end{aligned}
$$

### Cálculo de relación señal a ruido

La relación CNR (SNR) final ya la podemos calcular, simplemente a la potencia de señal (portadora) en dBW le debemos restar la potencia de ruido en la misma unidad:

$$
\begin{aligned}
CNR_{(3)}(dB) &= P_{(3)}(dBW) - N_{(3)}(dB) = \\
&=-18.904 dBW - (-92.604 dBW) = \\
&=73.70 dB
\end{aligned}
$$

$$
\boxed{CNR_{(3)}(dB) = 73.70 dB}
$$

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

**La toma con peor señal será la de la Habitación 2 de la Planta baja**, ya que la señal pasa por un repartidor de 6 salidas (5438), de mayor atenuación que el de 4 salidas (5437) y por el segmento de cable T-100 más largo (11 m).

### Apartado B.2

**¿Cuál es el valor de relación SNR en ella?**

![[Caso_práctico_II.png]]

En primer lugar, partimos de los resultados de potencia de señal y ruido en el punto (3), obtenidos en el apartado [[#Apartado A]]:

$$
\begin{aligned}
P_{(3)}(dBW) &= -18.904 dBW
\end{aligned}
$$

$$
\begin{aligned}
N_{(3)}(dBW) &=-92.604 dBW
\end{aligned}
$$

A partir del punto 3, tenemos 6 cuadripolos:
1. Cuadripolo 1 - Tramo de 5 metros de cable coaxial T-100: A<sub>1</sub> = 0.77 dB (ganancia G<sub>1</sub> = -0.77 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física: 300 K).
2. Cuadripolo 2 - Repartidor de 2 salidas 5435: A<sub>2</sub> = 4.5 dB (ganancia G<sub>2</sub> = -4.5 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física: 300 K).
3. Cuadripolo 3 - Tramo de 1 metro de cable coaxial T-100: A<sub>3</sub> = 0.154 dB (ganancia G<sub>3</sub> = -0.154 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física: 300 K).
4. Cuadripolo 4 - Repartidor de 6 salidas 5438: A<sub>4</sub> = 8.5 dB (ganancia G<sub>4</sub> = -8.5 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física: 300 K).
5. Cuadripolo 5 - Tramo de 11 metros de cable coaxial T-100: A<sub>5</sub> = 1.694 dB (ganancia G<sub>5</sub> = -1.694 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física: 300 K).
6. Cuadripolo 6 - Toma de usuario 5226: A<sub>6</sub> = 0.6 dB (ganancia G<sub>6</sub> = -0.6 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física: 300 K).

La potencia de señal en la salida, se calcula de la siguiente forma:

$$
\begin{aligned}
P_{(OUT)}(dBW) &= P_{(3)}(dBW) - A_1(dB) - A_2 (dB) - A_3(dB) - A_4 (dB) - A_5(dB) - A_6 (dB) = \\
&=-18.904 dBW - 0.77 dB - 4.5 dB - 0.154 dB - 8.5 dB - 1.694 dB - 0.6 dB = \\
&=-35.122 dBW
\end{aligned}
$$


### Apartado B.3

**¿Cuál es la respuesta amplitud/frecuencia en banda de la red (en la peor toma)?**

Primero **calculamos la atenuación total del cable coaxial**. La longitud total será de 17 metros (5+1+11) y la atenuación en los extremos de cada una de las bandas será:
- Atenuación a 47 MHz: 0,04 dB/m · 17 m = 0,68 dB
- Atenuación a 862 MHz: 0,154 dB/m · 17 m = 2,62 dB
- Atenuación a 950 MHz: 0,20 dB/m · 17 m = 3,4 dB
- Atenuación a 2150 MHz: 0,30 dB/m · 17 m = 5,1 dB

La respuesta amplitud/frecuencia (rizado) en la banda producida por el comportamiento del cable será entonces:
- Banda V/U (47-862 MHz): 2,62 dB - 0,68 dB = 1,94 dB
- Banda FI (950-2150MHz): 5,1 dB - 3,4 dB = 1,7 dB

El **rizado producido por los elementos de distribución en el peor caso**, esto es que no se compensen entre si será:
 - Banda V/U (47-862 MHz): 0,25 dB (5435) + 0,25 dB (5438) + 0,10 dB (5226) = ± 0,6 dB
- Banda FI (950-2150MHz): 0,25 dB (5435) + 0,25 dB (5438) + 0,10 dB (5226) = ± 0,6 dB

El rizado total se calculará como:

$$
Rizado Total=Rizado Cable+2 · Rizado Distribucion
$$

**Con lo que los rizados totales serán:**
- **Banda V/U (47-862 MHz): 1,94 dB + 2 · 0,6 dB = 3,14 dB (<16 dB)**
- **Banda FI (950-2150MHz): 1,7 dB + 2 · 0,6 dB = 2,9dB (<20 dB)**
### Apartado B.4

**¿Cuál será la relación señal/intermodulación (banda V/U) si consideramos que el amplificador tiene un nivel de salida máximo S<sub>max</sub>=114 dBμV (S/I=35dB) y deseamos que en la toma de usuario se disponga de un nivel de señal de 55dBμV? Nota: suponemos que se amplifican 12 canales.**

En primer lugar, calculamos el nivel de señal a la salida del amplificador para que la señal en la toma sea de 55 dBμV.

$$
\begin{aligned}
C_{amp}(dB\mu V) &= C_{Toma}(dB\mu V) + A_6(dB) + A_5 (dB) + A_4(dB) + A_3 (dB) + A_2(dB) + A_1 (dB) = \\
&=55 dB\mu V + 0.6 dB + 1.694 dB + 8.5 dB + 0.154 dB + 4.5 dB + 0.77 dB = \\
&=71.218 dB\mu V
\end{aligned}
$$

Una vez calculado, la relación señal a intermodulación se calcula de la siguiente forma (N=12 canales):

$$
\begin{aligned}
C/I (dB) &= (C/I)_{max} + 2 (C_{max}(dB \mu V) - 7,5 \log_{10}(N-1) - C_{amp}(dB \mu V)) = \\
&= 35 dB + 2 · (114 dB\mu V - 7.5\log_{10}(11) - 71.218 dB\mu V) = \\
&= 35 dB + 2 · (114 dB\mu V - 7.81 dB - 71.218 dB\mu V) = \\
&= 104.944 dB
\end{aligned}
$$