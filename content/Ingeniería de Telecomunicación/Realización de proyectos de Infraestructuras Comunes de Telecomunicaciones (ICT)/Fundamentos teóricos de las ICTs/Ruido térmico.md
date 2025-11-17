---
title: Ruido térmico
date: 2025-11-17
---

Existen muchos tipos de ruido: impulsivo (provocado por impulsos eléctricos, por ejemplo cuando se abre un interruptor en un circuito con bobinas se produce un pico de tensión), granalla (provocado por pequeños impulsos producidos dentro de los semiconductores), ruido de antena (ruido captado por una antena junto a la señal de interés), “ruido de interferencia” y “ruido de intermodulación” (realmente son otros fenómenos pero, a veces, se modelan como ruido), ruido de cuantificación (error de una codificación de fuente digital)… Pero el tipo de ruido más importante y que siempre está presente (en cualquier sistema electrónico) es el **ruido térmico**. 

El ruido térmico:
- Se debe a la agitación térmica de los electrones (y/o de los huecos) en todos los componentes electrónicos tanto pasivos (resistencias, condensadores, bobinas) como activos (transistores).
- Crece con la temperatura física pero, en casi todos los casos, es muy difícil establecer una relación numérica.
- Es mayor en los dispositivos activos y en los sistemas que los utilizan.
- Suele tener una potencia constante para todas las frecuencias (su transformada de Fourier es plana). Cuando se supone esta característica hablamos de “RUIDO BLANCO".

Para modelar el ruido térmico (para poder medir sus efectos) se utiliza una abstracción conocida como **temperatura de ruido**. 

La temperatura de ruido:
- Se define como: *Temperatura a la que un cuerpo negro produce una potencia de ruido igual a la de nuestro dispositivo (o canal), en el ancho de banda de interés*.
- Se mide en grados Kelvin (ºK).
- Normalmente, no coincide con la temperatura física. De hecho, puede tomar valores muy altos.
- La potencia de ruido en W se obtiene a partir de la temperatura con la fórmula:  **n=kTB<sub>w</sub>**, donde n es la potencia del ruido en W, T es la temperatura de ruido (ºK), B<sub>w</sub> es el ancho de banda (o rango de frecuencias en el que trabaja el sistema, Hz) y k es la constante de Boltzman: 1,381·10<sup>-23</sup> J/°K ó (W/(Hz · ºK)).

Desde el punto de vista del ruido, se puede modelar un sistema de telecomunicación como una fuente de ruido y un conjunto de cuadripolos en cascada. Cada cuadripolo genera ruido interno, esto es: el ruido a la salida será mayor que el ruido a la entrada multiplicado por la ganancia del cuadripolo. 

A continuación se muestra un modelo de cuadripolo que recibe ruido a su entrada y genera ruido internamente.

![[Modelo_cuadripolo_ruido.png]]

El cuadripolo de la figura va a amplificar el ruido que recibe y a añadirle más, por tanto el ruido a la salida será: n<sub>s</sub> = n<sub>e</sub> · g + n<sub>i</sub>. Se habla de “temperatura equivalente de ruido del cuadripolo” como aquélla que nos permite calcular el ruido interno del cuadripolo **REFERIDO A SU ENTRADA**. En la figura n<sub>i</sub> está referido a la salida, a la entrada tendríamos un ruido “virtual” n<sub>i</sub>/g. Nótese que n<sub>i</sub> “también es virtual”, esto es: no sabemos en qué parte del cuadripolo se suma el ruido (para saberlo necesitaríamos hacer un estudio electrónico complejo).

Eso puede ser interesante para diseñadores de amplificadores u otros módulos. En este curso será suficiente conocer el ruido introducido que mide el fabricante. Y que **SIEMPRE** nos lo va a dar referido a su entrada. Las fórmulas de interés aquí son:

$$
n_s = n_e ·g + n_i = kT_eB_wg + kT_{eq}B_wg = k(T_e+T_{eq})B_wg
$$

$$
T_{eq} = \frac{n_i}{kB_wg}
$$
Donde podemos ver que el ruido a la entrada se puede medir con una temperatura (T<sub>e</sub>) y el cuadripolo presenta una temperatura equivalente de ruido: T<sub>eq</sub> (referida a la entrada siempre). Dichas temperaturas de ruido se “encuentran” en la entrada de cuadripolo y se suman (el ruido es acumulativo). “Medir” T<sub>eq</sub> es problema del fabricante del cuadripolo (comercialmente “módulo amplificador”, “receptor de satélite”…).