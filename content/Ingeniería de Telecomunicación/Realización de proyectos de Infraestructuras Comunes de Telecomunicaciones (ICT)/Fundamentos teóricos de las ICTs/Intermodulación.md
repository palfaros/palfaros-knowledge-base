---
title: Intermodulación
date: 2025-11-16
---
La intermodulación es un tipo de distorsión no lineal donde aparecen frecuencias en la señal de salida que no estaban presentes en la entrada. Esas frecuencias pueden ser múltiplos de las frecuencias originales (armónicos) o combinación lineal de ellas (productos de intermodulación).

Vamos a intentar explicar la intermodulación a través de un ejemplo sencillo: supongamos un amplificador diseñado para aumentar la potencia 40 dB’s. Eso equivaldría a un sistema que implementara la ecuación **y(t) = 100x(t)** (100 es la ganancia en tensión en unidades naturales). Este tipo de sistemas se realizan con circuitos que usa una o más etapas de transistores (por ejemplo, un montaje con transistor bipolar en emisor común). Como los transistores nunca son ideales aparecerán comportamientos no lineales. Supongamos que somos capaces de cuantificar la no linealidad y llegamos a la conclusión de que la verdadera función de transferencia (relación entre entrada y salida) es: **y(t) = 100x(t) + 0.1\[x(t)\]<sup>2</sup>**. Nótese que es una pequeña distorsión (1000 veces más pequeña que la señal deseada). De todas formas, si a la entrada tenemos una señal compuesta por más de una frecuencia, aparecerá la intermodulación.

Supongamos que:

$$
x(t) = \cos(2\pi f_1 t) + \cos(2\pi f_2 t)
$$

Entonces tendremos:

$$
y(t) = 100x(t) + 0.1[x(t)]^2 = 100[\cos(2\pi f_1 t) + \cos(2\pi f_2 t)] + 0.1[\cos(2\pi f_1 t) + \cos(2\pi f_2 t)]^2 = 100x(t) + 0.1\cos^2(2\pi f_1​ t) + 0.1\cos^2(2\pi f_2​ t) + 0.2\cos(2\pi f_1 t)\cos(2\pi f_2 t) = 100x(t) + 0.05 + 0.05\cos(2\pi (2 f_1) t) + 0.05 + 0.05\cos(2\pi (2 f_2) t) + 0.1\cos(2\pi (f_1 + f_2) t) + 0.1\cos(2\pi (f_1 - f_2) t)
$$

Donde se han utilizado las relaciones:

$$
\cos^2(x) = \frac{1}{2} + \frac{1}{2} + \cos(2x)
$$
$$
\cos(x)\cos(y) = \frac{1}{2}\cos(x+y) + \frac{1}{2}\cos(x-y)
$$

Vemos que, en este ejemplo simple, ya aparecen armónicos en continua (frecuencia cero, 0·f<sub>1</sub> y 0·f<sub>2</sub>, la frecuencia cero se traduce en una constante) y en frecuencias dobles (2·f<sub>1</sub> y 2·f<sub>2</sub>). También tenemos productos de intermodulación en las frecuencias suma y resta (f<sub>1</sub>+f<sub>2</sub> y f<sub>1</sub>-f<sub>2</sub>). En general, si en las no linealidades aparece una potencia m, tendemos armónicos hasta el múltiplo m (hasta orden m) y todas las combinaciones m<sub>1</sub>·f<sub>1</sub>±m<sub>2</sub>·f<sub>2</sub> donde m<sub>1</sub>+m<sub>2</sub>≤m (hasta orden m).
