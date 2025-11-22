---
title: Cuestionario Temas 1 y 2
date: 2025-11-21
---
## Cuestión 1

Cuando una señal atraviesa un amplificador real…

Selecciona una:
- La calidad siempre mejora.
- Aumenta el nivel de la señal y el del ruido disminuye.
- La relación señal a ruido no cambia.
- La relación señal a ruido baja.

### Respuesta

La relación señal a ruido baja.

### Justificación

Un amplificador real no es ideal: además de amplificar la señal, **añade su propio ruido interno** (térmico, del dispositivo, etc.). Eso significa que, aunque la señal se amplifica, el **ruido total a la salida es mayor** que el que tenía la señal originalmente.

Como consecuencia, **la relación señal-a-ruido (SNR)**, que mide cuánta señal útil hay respecto al ruido, **empeora**.

En un amplificador ideal la SNR no cambiaría, pero en la práctica **baja**.

## Cuestión 2

Cuando una señal senoidal o una combinación de ellas pasa por un sistema no lineal…

Seleccione una:
- La señal siempre se atenúa.
- La señal desaparece.
- Aparecen frecuencias que no estaban presentes en la entrada.
- Ninguna de las anteriores.

### Respuesta

Aparecen frecuencias que no estaban presentes en la entrada.

### Justificación

Un sistema no lineal genera **distorsión no lineal**, lo que provoca la aparición de **armónicos**, **intermodulación** y otras componentes en frecuencia que **no existían en la señal original**.

Por ejemplo:

- Si entra una senoide de frecuencia _f_, pueden aparecer armónicos: 2f, 3f, 4f…
- Si entran dos senoides f₁ y f₂, aparecen frecuencias de intermodulación: f₁ ± f₂, 2f₁ ± f₂, etc.

Así que lo característico de un sistema no lineal es **crear nuevas frecuencias**.

## Cuestión 3

El código Morse es un ejemplo de…

Seleccione una:
- Codificación de fuente.
- Codificación de canal.
- Codificación analógica.
- Ninguna de las anteriores.

### Respuesta

Codificación de fuente.

### Justificación

El código Morse asigna a cada carácter (letra, número, símbolo) una secuencia de puntos y rayas. Es un **método para representar la información original**, reduciendo su longitud promedio (códigos más cortos para letras frecuentes), así que se considera **codificación de fuente**.

No es codificación de canal porque no añade redundancia para corregir errores, ni es codificación analógica porque el mensaje sigue siendo digital (discreto: punto/raya).

## Cuestión 4

En un canal de comunicaciones, la distorsión LINEAL provoca...

Seleccione una:
- Que algunas componentes frecuenciales de la señal de entrada se atenúen más que otras.
- Una modificación de carácter aleatorio de la señal de entrada.
- La aparición, en la señal de salida, de frecuencias diferentes a las presentes en la señal de entrada.
- Ninguna de las anteriores.

### Respuesta

Que algunas componentes frecuenciales de la señal de entrada se atenúen más que otras.

### Justificación

La **distorsión lineal** ocurre cuando un canal tiene una **respuesta en frecuencia no plana** o un **retardo de grupo no constante**. Esto hace que:
- Algunas frecuencias de la señal se atenúen más que otras (distorsión de amplitud).   
- También puede haber diferentes retardos según la frecuencia (distorsión de fase).
Pero **NO**:
- Produce cambios aleatorios → eso sería **ruido**.
- Genera nuevas frecuencias → eso ocurre en **distorsión no lineal**.

## Cuestión 5

En un canal de comunicaciones, la distorsión no lineal provoca:

Seleccione una:
- Que algunas componentes frecuenciales de la señal de entrada se atenúen más que otras.
- Una modificación de carácter aleatorio de la señal de entrada.
- La aparición, en la señal de salida, de frecuencias diferentes a las presentes en la señal de entrada.
- Que algunas componentes frecuenciales de la señal de entrada se propaguen a mayor velocidad que otras.

### Respuesta

La aparición, en la señal de salida, de frecuencias diferentes a las presentes en la señal de entrada.

### Justificación

La **distorsión no lineal** es aquella en la que el sistema genera **nuevas componentes espectrales**:
- Armónicos (2f, 3f, 4f…) si entra una sola frecuencia.
- Productos de intermodulación (f₁ ± f₂, 2f₁ ± f₂…) si entran varias.
El resto de opciones corresponden a otros fenómenos:
- **a** → distorsión lineal (respuesta en frecuencia no plana).
- **b** → ruido (carácter aleatorio).
- **d** → distorsión de fase o dispersión (retardo de grupo dependiente de la frecuencia).

## Cuestión 6

En un sistema de telecomunicaciones formado por una red de amplificadores y atenuadores reales en cascada, ¿Qué ocurre con la relación señal a ruido (S/N) a medida que la señal va pasando por los distintos elementos?

Seleccione una:
- Va mejorando.
- Va empeorando.
- No le afecta, se mantiene igual.
- La S/N no se aplica a amplificadores y atenuadores.

### Respuesta

Va empeorando.

### Justificación

En una cadena real de amplificadores y atenuadores:
- Cada **amplificador real añade ruido propio** (térmico, ruido de dispositivo).
- Los **atenuadores** reducen tanto la señal como el ruido… pero al reducir la señal, la S/N también empeora.   
- A medida que la señal pasa por más etapas, se **acumula ruido** y la relación señal-ruido **empeora progresivamente**.

Por eso, en sistemas reales (RF, fibra, redes de telecom…), es crítico colocar **amplificadores de bajo ruido (LNA)** al principio de la cadena.

## Cuestión 7

La codificación de vídeo MPEG-2 se utiliza en televisión digital terrestre como método de…

Seleccione una:
- Codificación de fuente.
- Codificación de canal.
- Codificación analógica.
- Ninguna de las anteriores.

### Respuesta

Codificación de fuente.

### Justificación

MPEG-2 es un estándar de **compresión de vídeo y audio**, cuyo objetivo es **reducir la cantidad de datos necesarios** para representar el contenido multimedia sin (o con poca) pérdida perceptual.

Eso es exactamente **codificación de fuente**: reducir redundancia y comprimir la información original.

No añade redundancia para corrección de errores (eso sería codificación de canal), ni es un método analógico.

## Cuestión 8

Nos dicen que el campo eléctrico producido por una antena de telefonía móvil es de 50 dBµV…

Seleccione una:
- Incorrecto, el campo no se puede medir en decibelios.
- Incorrecto, la unidad de campo eléctrico es V/m o dB V/m (o sus múltiplos y submúltiplos).
- Correcto, aunque es un valor un poco bajo.
- Ninguna de las anteriores.

### Respuesta

Incorrecto, la unidad de campo eléctrico es V/m o dB V/m (o sus múltiplos y submúltiplos).

### Justificación

El campo eléctrico **siempre** debe expresarse con unidad de **voltios por metro (V/m)**.  
En decibelios, se usa **dB V/m**, **dBµV/m**, etc.

Un valor como **50 dBµV** _sin “/m”_ corresponde a una **tensión**, no a un campo eléctrico. Por tanto, está incorrectamente expresado.

## Cuestión 9

Nos dicen que el campo eléctrico producido por una antena de TV es de 60 dBµV/m…

Seleccione una:
- Incorrecto, el campo no se puede medir en decibelios.
- Correcto, el campo en unidades naturales valdrá 10<sup>-3</sup> V/m.
- Correcto, el campo en unidades naturales valdrá 10<sup>6</sup> mV/m.
- Ninguna de las anteriores.

### Respuesta

Correcto, el campo en unidades naturales valdrá 10<sup>-3</sup> V/m.

### Justificación

Dado un campo de **60 dBµV/m**, convertimos a unidades naturales:

$$
E = 60\ \text{dB}\,\mu\text{V/m} \Rightarrow 
E_{\text{natural}} = 10^{\frac{60}{20}}\ \mu\text{V/m} = 10^{3}\ \mu\text{V/m}
$$

Pasamos a voltios por metro:

$$
10^{3}\ \mu\text{V/m} = 10^{3} \cdot 10^{-6}\ \text{V/m} = 10^{-3}\ \text{V/m}
$$

$$
\boxed{E = 10^{-3}\ \text{V/m}}
$$

Por tanto, es correcto y equivale a **1 mV/m = 10⁻³ V/m**.

## Cuestión 10

Respecto a la forma de enviar la información en telegrafía antigua (puntos y rayas), hoy la llamaríamos PDM (modulación de pulsos por duración). Esto es un ejemplo de…

Seleccione una:
- Codificación de fuente.
- Codificación de canal.
- Codificación analógica.
- Ninguna de las anteriores.

### Respuesta

Codificación de canal.

### Justificación

La telegrafía convierte información en pulsos modulados en el tiempo, que es **modulación de pulsos**, es decir, una forma de **adaptar la señal al canal**. No es codificación de fuente (no representa caracteres de manera más eficiente) ni codificación analógica en el sentido clásico..

## Cuestión 11

Si nos dicen que la potencia recibida por una antena es de -10 dBm, eso significa…

Seleccione una:
- Que no se recibe nada.
- Que la potencia recibida es igual a 1 W.
- Que la potencia recibida es igual a 1 mW.
- Que la potencia recibida es igual a 0.1 mW.

### Respuesta

Que la potencia recibida es igual a 0.1 mW.

### Justificación

Dado una potencia de **-10 dBm**, convertimos a unidades naturales:

$$
P = -10\ \text{dBm} \Rightarrow 
P_{\text{natural}} = 10^{\frac{-10}{10}}\ \text{mW} = 10^{-1}\ \text{mW}
$$

$$
\boxed{P = 0.1\ \text{mW}}
$$

Por tanto, es correcto y equivale a **-10 dBm = 0.1 mW**.

## Cuestión 12

Si nos dicen que la potencia recibida por una antena es de 0 dBm, eso significa…

Seleccione una:
- Que no se recibe nada.
- Que la potencia recibida es igual a 1 W.
- Que la potencia recibida es igual a 1 mW.
- Que la potencia recibida es igual a 0.1 mW.

### Respuesta

Que la potencia recibida es igual a 1 mW.

### Justificación

Dado una potencia de **0dBm**, convertimos a unidades naturales:

$$
P = 0\ \text{dBm} \Rightarrow 
P_{\text{natural}} = 10^{\frac{0}{10}}\ \text{mW} = 1\ \text{mW}
$$

$$
\boxed{P = 1\ \text{mW}}
$$

Por tanto, es correcto y equivale a **0 dBm = 1 mW**.

## Cuestión 13

Supongamos que en una antena nos dicen que el campo eléctrico producido por una antena de TV es de 60 dBµV/m y nosotros medimos un nivel de tensión de 50 dBµV a su salida…

Seleccione una:
- Imposible… el nivel de señal no puede bajar así, en todo caso aumentará debido a la ganancia de la antena.
- Incorrecto, las unidades son incorrectas.
- Posible, las unidades son ahora de tensión (que es lo que se mide a la salida de la antena). El valor depende de las características de la misma.
- Ninguna de las anteriores es correcta.

### Respuesta

Posible, las unidades son ahora de tensión (que es lo que se mide a la salida de la antena). El valor depende de las características de la misma.

### Justificación

- El **campo eléctrico** (en dBµV/m) mide la intensidad de la señal en el espacio.
- La **tensión a la salida de la antena** depende de la **impedancia de la antena y del circuito de medida**, así como de su ganancia o pérdidas.
- Por eso, es totalmente posible que el campo sea de **60 dBµV/m** y la tensión medida a la salida de la antena sea **50 dBµV**, sin que haya contradicción.

## Cuestión 14

Una señal de 80 dBµV alimenta un sistema de impedancia característica 75 Ω. La potencia de entrada al sistema es de…

Seleccione una:
- 85.33 pW.
- 1.33 W.
- -28.75 dBm.
- Ninguna de las anteriores es correcta.

### Respuesta

-28.75 dBm.
### Justificación

Se nos da:

$$
V = 80\ \text{dBµV}, \quad R = 75\ \Omega
$$

1. Convertimos de dBµV a voltios:

$$
V_{\text{µV}} = 10^{\frac{80}{20}} = 10^4\ \mu\text{V} = 10^4 \cdot 10^{-6}\ \text{V} = 0.01\ \text{V}
$$

2. Calculamos la potencia en vatios:

$$
P = \frac{V^2}{R} = \frac{(0.01)^2}{75} = \frac{0.0001}{75} \text{W}
$$

3. Convertimos a dBm:

$$
P_{\text{dBW}} = 10 \cdot \log_{10} \left( \frac{0.0001}{75} \right) = -58.75 \text{dBW} 
$$

$$
P_{\text{dBm}} = P_{\text{dBW}} + 30 \text{dB} = -28.75 \text{dBm} 
$$

$$
\boxed{P_{\text{dBm}} = -28.75\ \text{dBm}}
$$

## Cuestión 15

¿Qué edificios de nueva construcción NO precisan proyecto de ICT?

Seleccione una:
- Ninguno, todos lo precisan.
- Los de menos de 20 viviendas.
- Las viviendas unifamiliares independientes (no hay comunidad ni propiedad horizontal).
- Ninguna de las anteriores.

### Respuesta

Las viviendas unifamiliares independientes (no hay comunidad ni propiedad horizontal).

### Justificación

La **ICT (Infraestructura Común de Telecomunicaciones)** se aplica a los edificios **con varias viviendas o locales** que comparten instalaciones de telecomunicaciones en régimen de **propiedad horizontal o comunidad**.

Por tanto, una **vivienda unifamiliar independiente**, al no existir comunidad ni elementos compartidos, **no necesita proyecto de ICT**.