---
title: Amplificadores
date: 2025-11-15
---
Un **amplificador** es un sistema (cuadripolo) que aumenta la potencia de la señal de entrada. Visto de una forma muy simple “la multiplica por un número” (un amplificador es un circuito electrónico que puede ser muy complejo de diseñar, sobre todo en frecuencias altas). Un amplificador es un ejemplo de circuito electrónico activo. Eso significa que:
- Necesita alimentación externa.
- Proporciona potencia a la señal de entrada.
- Contiene elementos electrónicos activos (transistores).

El parámetro más importante de un amplificador es su “Ganancia en Potencia” o cociente entre la potencia de salida y la de entrada (g<sub>p</sub>> 1). A veces, se habla también de la “Ganancia en Tensión” (que es más fácil de medir) o cociente entre la tensión de salida y la de entrada (g<sub>v</sub>>1). Habitualmente, un amplificador se diseña para que la impedancia de entrada sea igual a la de salida (impedancia de referencia). En este caso g<sub>p</sub>=g<sub>v</sub><sup>2</sup>. Y en dB’s:

$$
G_p = 10 \log_{10}(g_p) = 10 \log_{10}(g_v^2) = 20 \log_{10}(g_v) = G_v
$$

La impedancia de entrada/salida es la impedancia del equivalente Thévenin del cuadripolo visto desde su entrada/salida. Dado el tipo de señal de interés, los equipos pensados para procesarla deberían tener un valor de impedancia estandarizado para esa señal. Por ejemplo, para la señal de TV se utiliza impedancia z<sub>0</sub> = 75 Ω en equipos de usuario y z<sub>0</sub> = 50Ω.

![[Amplificador.png]]