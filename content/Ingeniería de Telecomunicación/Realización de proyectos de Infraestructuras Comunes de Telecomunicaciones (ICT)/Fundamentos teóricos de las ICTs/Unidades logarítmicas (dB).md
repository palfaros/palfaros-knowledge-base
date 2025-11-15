---
title: Unidades Logarítmicas (dB)
date: 2025-11-15
---
En telecomunicaciones (igual que en acústica) son muy habituales las unidades logarítmicas (decibelios o dB). El dB apareció como una forma conveniente de representar las gráficas de ganancia de los amplificadores en las que se debían representar valores muy bajos y otros muy altos en los mismos ejes. La ganancia de un amplificador es un cociente entre potencias (por tanto, a-dimensional), normalmente dividiremos la potencia de la señal de salida por la de entrada obteniendo un número que me indica cuánta potencia “añade” el amplificador. Ese número lo llamamos “ganancia en unidades naturales (g). Para expresar dicha ganancia en decibelios calcularemos la ganancia en decibelios G (cuando mezclamos dB’s y unidades naturales es conveniente utilizar el criterio de que las variables en decibelios van en mayúscula y las expresadas en unidades naturales en minúscula):

$$
G = 10 \log_{10}(g)
$$

En la siguiente imagen se muestra un ejemplo de gráfica logarítmica, en la que se puede apreciar que la ganancia cambia con la frecuencia.

![[Ejemplo_gráfica_logarítmica.png]]

Cuando en vez de un amplificador tenemos un tramo de cable, éste actuará como atenuador, esto es: transmitirá la señal pero perdiendo potencia. Si dividimos la potencia inicial entre la final obtenemos la atenuación en unidades naturales: a. Y también podemos expresarla en dB’s:

$$
A = 10 \log_{10}(a)
$$

Una atenuación de 3 dB’s es equivalente a una ganancia de -3 dB’s (igual que deberle 100 euros al banco es lo mismo que tener un saldo de -100).

Una ventaja importante del uso de dB’s es que la “_atenuación en dB’s de los diferentes tipos de cables es lineal con la distancia_”. Ejemplo: podemos encontrar cable coaxial para transmitir señal de TV que tenga una atenuación de 0.18 dB/m.

Hasta ahora hemos visto los dB’s “_adimensionales_” o “_dB’s propiamente dichos_” que miden relaciones entre potencias. Este mismo tipo de dB’s se utiliza para medir la ganancia de las antenas (la capacidad de la antena para reforzar las ondas que recibe o envía según la dirección de las mismas). A veces, nos es más fácil medir el voltaje de una señal que su potencia. Suponiendo que todos los elementos de un sistema tienen la misma impedancia (z) de entrada y de salida (la impedancia de entrada/salida es la impedancia del equivalente Thévenin de un sistema visto desde su entrada/salida, cuando todas son iguales en una cadena de sistemas hablamos de impedancias adaptadas), la potencia de una señal según su voltaje es v2/z. En estas condiciones, si conocemos los voltajes a la entrada (vi) y a la salida (vo) de un amplificador, tendremos:

$$
g = \frac{v_o^2 / z}{v_i^2 / z} = \left( \frac{v_o}{v_i} \right)^2
$$

$$
G = 10 \log_{10}(g) = 10 \log_{10}\left( \frac{v_o}{v_i} \right)^2 = 20 \log_{10}\left( \frac{v_o}{v_i} \right)
$$

De donde viene la conocida regla:

*<<Cuando medimos relaciones de potencias o de energías (o potencia, o energía) las unidades logarítmicas se obtienen con **10log10(.)**. Pero, cuando medimos relaciones de tensión, corriente, campo eléctrico, campo magnético (o valores absolutos de dichas magnitudes) utilizaremos la expresión **20log10(.)**>>*.

Como podemos ver en la última afirmación, los dB´s pueden utilizarse para medir valores absolutos de magnitudes y, en este caso, deberemos especificar el “tipo de dB que utilizamos”. Cada tipo implica un valor de referencia. Explicándolo con un ejemplo: para medir potencia (absoluta) con dB’s podemos establecer como referencia pr = 1 W, en este caso la unidad logarítmica se llama dB Watio (dBW) y se calcula así:

$$
P(dBW) = 10 \log_{10}\left( \frac{p}{p_r} \right) = 10 \log_{10}\left( \frac{p(W)}{1W} \right) = 10 \log_{10}\left( p(W) \right)
$$

Podemos verlo como que dBW significa aplicar el logaritmo a la potencia en W o (más correctamente) como que existe una potencia de referencia igual a 1 W que se pone en el divisor para lograr una relación adimensional.

A continuación, presentamos una tabla resumen de los diferentes tipos de dB utilizados en telecomunicaciones:

![[Tipos_dBs_Telecomunicaciones.png]]

Una de las más utilizadas es el dBm (al que, casi nunca, se le llama dBmW) para la potencia de señales recibidas.

Por último, un par de detalles sobre las unidades logarítmicas (útiles para intentar evitar errores comunes):
- No se pueden aplicar a cantidades con signo negativo (en todo caso al valor absoluto).
- Un valor nulo de una unidad logarítmica implica un valor 1 (o igual a la referencia) de la variable en unidades naturales.
- Un valor negativo de una unidad logarítmica implica un valor menor que 1 (o menor que la referencia) de la variable en unidades naturales.

A veces, puede interesar transformar las fórmulas convencionales (unidades naturales) a dB’s. Por ejemplo, para calcular el campo eléctrico producido por una antena a distancia d, existe la fórmula (unidades naturales y del S.I.):

$$
e(V/m) = \sqrt{\frac{z_0(\Omega)}{4\pi}}\frac{\sqrt{p_t(W)g}}{d(m)}
$$

Donde obtenemos el campo e en V/m (unidad del S.I.), z0 es la impedancia radioeléctrica del aire (aproximadamente 120πΩ), pt es la potencia que se “inyecta” a la antena y g la ganancia de la misma (en la dirección que lleva al punto de interés). Esta última variable (g) es adimensional.

Si queremos obtener el campo en dBµV/m podemos transformar la fórmula así:

$$
E(dB\mu V/m) = 20\log_{10}\left[e(\mu V/m)\right] = 20\log_{10}\left[10^6 e(V/m)\right] = 120 + 20\log_{10}\left[10^6 \sqrt{\frac{z_0(\Omega)}{4\pi}}\frac{\sqrt{p_t(W)g}}{d(m)}\right] = 120 + 10\log_{10}\left[\frac{z_0(\Omega)}{4\pi}\right] + 10\log_{10}\left[p_t(W)\right] + 10\log_{10}\left[g\right] - 20\log_{10}\left[d(m)\right] = 120 + 10\log_{10}\left[\frac{z_0(\Omega)}{4\pi}\right] + P_t(dBW) + G (dB) - 20\log_{10}\left[d(m)\right] 
$$

Donde vemos que se obtiene una fórmula más simple (sumas y restas en lugar de producto y cociente, desaparecen las potencias…), a condición de expresar en decibelios todas las variables que podamos. Normalmente las potencias que atacan las antenas y la ganancia de las mismas también las tendremos en dB’s porque es la unidad que utilizan los fabricantes en sus manuales. Si tuviéramos la potencia de la antena en dBKW (posible para un emisor de gran potencia, por ejemplo una estación de difusión televisión) podríamos hacer:

$$
P_t(dBW) = 10\log_{10}\left[p_t(W)\right] = 10\log_{10}\left[10^3 p_t(KW)\right] = 30 + 10\log_{10}\left[p_t(KW)\right] = 30 + P _t(dBKW)
$$

Este último ejemplo intenta introducirnos el siguiente concepto:

*En unidades naturales, para convertir múltiplos y submúltiplos, se multiplica por potencias de 10 (tal vez de exponente negativo). En unidades logarítmicas **SE SUMAN MÚLTIPLOS DE 10** (tal vez negativos).*