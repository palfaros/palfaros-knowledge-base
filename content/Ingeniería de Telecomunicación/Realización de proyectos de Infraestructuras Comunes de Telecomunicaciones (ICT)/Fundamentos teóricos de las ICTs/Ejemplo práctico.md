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
	- Atenuación: 0,15 dB/m.
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

Ahora debemos tener en cuenta el ruido. Lo vamos a hacer UTILIZANDO TEMPERATURAS y EN UNIDADES NATURALES. Conocemos: la temperatura de entrada T<sub>ant</sub> en el punto (1), si calculamos la del atenuador (T<sub>1</sub>) estará también en el punto (1), y la del amplificador (T2) la obtendremos en el punto (2) (a la entrada). En el punto (3) la temperatura de ruido total será