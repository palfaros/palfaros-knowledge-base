---
title: Ejemplo práctico
date: 2025-11-18
---
**Supongamos que tenemos una vivienda unifamiliar donde se utiliza el amplificador de mástil “Televés 5356” (un modelo real) que tiene 40 dB de ganancia en toda la banda de televisión digital terrena (TDT) y presenta un factor de ruido de 4 dB. Supondremos que la temperatura de ruido a la salida de la antena es de 50 °K (temperatura de antena, este es el ruido de antena y el ruido de entrada al sistema) y que el nivel de señal en ese mismo punto es de 80 dBµV (impedancia de referencia 75 Ω). Además, sabemos que la antena está unida al amplificador por 1 m de cable T-100 (un modelo real y, además, muy común) que presenta 0.15 dB de atenuación por metro) y que está a una temperatura física 300 °K. El ancho de banda es de 8 MHz (el propio de un canal/portadora de TDT).**

**Calcula la relación portadora a ruido a la salida del amplificador.**

Para resolver este problema debemos empezar por dibujar un esquema del sistema:

![[Ejemplo_práctico_esquema.png]]

En segundo lugar, tenemos los siguientes datos:
- Antena:
	- Temperatura de ruido a la salida de antena (temperatura de antena): 50 K.
	- Nivel de señal a la salida de antena: 80 dBµV.
	- Impedancia referencia: 75 Ω.
- Cable T-100:
	- Longitud: 1 m.
	- Temperatura física: 300 K.
	- Atenuación: 0.15 dB/m.
- Amplificador Televés 5356:
	- Ganancia: 40 dB.
	- Factor de ruido: 4 dB.
- Ancho de banda: 8 MHz.

Tenemos 3 puntos de interés: (1), (2) y (3) y dos cuadripolos:

- El primero es un atenuador con atenuación A<sub>1</sub> = 0.15 dB (ganancia G<sub>1</sub> = -0.15 dB). Su factor de ruido lo podemos calcular con la fórmula correspondiente (ya que conocemos la temperatura física).
- El segundo es un amplificador, ganancia G<sub>2</sub> = 40 dB y factor de ruido 4 dB.

**El objetivo del ejercicio es conocer la relación portadora a ruido en el punto (3)**. Para conocer la relación portadora a ruido en el punto 3 podemos calcular las potencias de señal y ruido en dicho punto.

El primer problema es que no tenemos la potencia recibida en la antena sino el nivel (tensión) que se mide en la misma. Podemos convertir los dBµV en voltios y aplicar la fórmula de la potencia, pero también podemos hacer toda la operación en dB:

$$
P_{(1)}(dBW) = 10\log_{10}(v[V]^2/z_0[\Omega]) = 10\log_{10}(v[V]^2) - 10\log_{10}(z_0[\Omega]) = 20\log_{10}(v[V]) - 10\log_{10}(z_0[\Omega]) = 20\log_{10}(v[\mu V]·10^{-6}) - 10\log_{10}(z_0[\Omega]) = 20\log_{10}(v[\mu V]) - 120\log_{10}(10) - 10\log_{10}(z_0[\Omega]) = L(dB\mu V) - 120 - 10\log_{10}(z_0[\Omega]) = 80 dB\mu V - 120 - 10\log_{10}(75\Omega) = 80 dB\mu V - 120 - 18.75 dB\Omega = -58.75 dBW
$$

Una vez calculada la potencia de señal en el punto 1, la potencia de señal en el punto 3 se calcula fácilmente:

$$
P_{(3)}(dBW) = P_{(1)}(dBW) -A_1(dB) + G_2 (dB) = -58.75 dBW - 0.15 dB/m · 1 m + 40 dB = -18.9 dBW 
$$

Ahora debemos tener en cuenta el ruido. Lo vamos a hacer UTILIZANDO TEMPERATURAS y EN UNIDADES NATURALES. Conocemos: la temperatura de entrada T<sub>ant</sub> en el punto (1), si calculamos la del atenuador (T<sub>1</sub>) estará también en el punto (1), y la del amplificador (T<sub>2</sub>) la obtendremos en el punto (2) (a la entrada). En el punto (3) la temperatura de ruido total será:

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
T_{(3)} = T_{(ant)}g_1g_2 + T_1g_1g_2 +T_2g_2 = 50K·0.966·10000 + 10.54K·0.966·10000 + 43845K·10000 = (50K + 10.54K)·0.966·10000 + 438.45K·10000 = 584816.4K + 4384500K = 4969316.4 K = 4.97·10^6 K
$$

Parece un valor “monstruoso” pero recordemos que no tiene relación con la temperatura física, sólo es una forma de medir el ruido. Y al multiplicar por la constante de Boltzman va a quedar un ruido moderado. La relación CNR (SNR) final ya la podemos calcular, simplemente a la potencia de señal (portadora) en dBW le debemos restar la potencia de ruido en la misma unidad:

$$
CNR_{(3)}(dB) = P_{(3)}(dBW) - 10\log_{10}(kT_{(3)}B_W) = -18.90 dBW - 10\log_{10}(1.381·10^{-23}·4.97·10^6·8·10^6) = 73.70 dB
$$

$$
CNR_{(3)}(dB) = 73.70 dB
$$

Que es un valor alto, más que suficiente para recibir correctamente la señal de TDT. Cada señal tiene estipulada una relación CNR mínima que se puede consultar, por ejemplo, en la norma de ICT’s. Por encima de ella, la demodulación será correcta con BER (Bit Error Rate) despreciable.

