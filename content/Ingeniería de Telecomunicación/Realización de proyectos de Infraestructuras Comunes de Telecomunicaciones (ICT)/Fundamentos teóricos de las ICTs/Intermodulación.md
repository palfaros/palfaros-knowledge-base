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

En un caso real, las frecuencias f<sub>1</sub> y f<sub>2</sub> corresponderán a las portadoras de dos canales del mismo servicio que se están amplificando juntas (por ejemplo dos canales de televisión que se amplifican en el mismo equipo por ser de frecuencias cercanas). En este caso las peores consecuencias de la distorsión serán los productos de intermodulación de orden impar del tipo: (n+1)·f<sub>1</sub>-n·f<sub>2</sub>, ya que al ser f<sub>1</sub> y f<sub>2</sub> parecidas, el resultado será una frecuencia similar a ambas, por tanto difícil de eliminar. Los amplificadores suelen estar dotados de filtros que eliminan las frecuencias fuera de la banda de interés pero si la frecuencia distorsionante está en esa banda no será eliminada.

De todas formas, en este ejemplo podemos intuir que el problema no es muy grave ya que la señal de interés (multiplicada por 100) es 1000 veces mayor que las distorsionantes. Para cuantificar esto se define la relación portadora/intermodulación:

$$
(C/IM)_{dB} = 10 \log_{10}\frac{Potencia\_Señal\_Principal}{Potencia\_Intermodulación\_y\_Armónicos}
$$

Sabiendo que la potencia de una sinusoide de amplitud A es A<sup>2</sup>/2 y que la potencia de la suma de sinusoides es la suma de potencias (algo que no ocurre para otras señales), en el ejemplo tendremos (Atención: la potencia de una constante C es C<sup>2</sup>).

$$
(C/IM)_{dB} = 10 \log_{10}\frac{\frac{1}{2}(100^2+100^2)}{0.1^2+\frac{1}{2}(0.05^2+0.05^2+0.1^2+0.1^2)} = 56.48 dB
$$

Un valor apreciable… seguramente suficiente para que cualquier aplicación (modulación) resista la perturbación, aunque habría que asegurarse consultando las especificaciones del tipo de señal en cuestión.

Vamos a ver una aplicación concreta a las instalaciones ICT.

Proponemos a continuación  un procedimiento para calcular la no linealidad de la instalación asegurando un funcionamiento correcto:
1. Suponemos que la especificación de señal máxima de los amplificadores que suministran los fabricantes corresponde a una C/I de 35 dB tanto para la TDT como en la banda FI. Lo haremos constar así en el pliego de condiciones.
2. Una vez que hayamos calculado el nivel de salida en que estos trabajan, que dependerá de cada instalación objeto de estudio, calcularemos la S/I utilizando las expresiones siguientes (Son válidas para señales analógicas pero las extrapolamos a la TDT con objeto de poder realizar el cálculo de la especificación del reglamento):
	En el caso de amplificadores monocanales:
	$$
	C/I (dB) = (C/I)_{max} + 2 (C_{max}(dB \mu V) - C_{amp}(dB \mu V))
	$$
	
	En el caso de amplificadores que procesan N canales:
	
$$
	C/I (dB) = (C/I)_{max} + 2 (C_{max}(dB \mu V) - 7.5\log_{10}(N-1)- C_{amp}(dB \mu V))
	$$
	
1. Comprobar que la S/I por canal resultante está por encima de la especificación de la ICT (ver apartado 4.5 del anexo I de la norma).