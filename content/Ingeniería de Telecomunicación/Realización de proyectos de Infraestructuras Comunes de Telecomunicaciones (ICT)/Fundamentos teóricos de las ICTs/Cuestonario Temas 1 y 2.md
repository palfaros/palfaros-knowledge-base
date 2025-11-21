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

**Respuesta:** La relación señal a ruido baja.
**Justificación**: Un amplificador real no es ideal: además de amplificar la señal, **añade su propio ruido interno** (térmico, del dispositivo, etc.). Eso significa que, aunque la señal se amplifica, el **ruido total a la salida es mayor** que el que tenía la señal originalmente.

Como consecuencia, **la relación señal-a-ruido (SNR)**, que mide cuánta señal útil hay respecto al ruido, **empeora**.

En un amplificador ideal la SNR no cambiaría, pero en la práctica **baja**.

## Cuestión 2

Cuando una señal senoidal o una combinación de ellas pasa por un sistema no lineal…

Seleccione una:
- La señal siempre se atenúa.
- La señal desaparece.
- Aparecen frecuencias que no estaban presentes en la entrada.
- Ninguna de las anteriores.

**Respuesta**: Aparecen frecuencias que no estaban presentes en la entrada.
**Justificación**: Un sistema no lineal genera **distorsión no lineal**, lo que provoca la aparición de **armónicos**, **intermodulación** y otras componentes en frecuencia que **no existían en la señal original**.

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

**Respuesta**: Codificación de fuente.
**Justificación**: El código Morse asigna a cada carácter (letra, número, símbolo) una secuencia de puntos y rayas. Es un **método para representar la información original**, reduciendo su longitud promedio (códigos más cortos para letras frecuentes), así que se considera **codificación de fuente**.

No es codificación de canal porque no añade redundancia para corregir errores, ni es codificación analógica porque el mensaje sigue siendo digital (discreto: punto/raya).

## Cuestión 4

En un canal de comunicaciones, la distorsión LINEAL provoca...

Seleccione una:
- Que algunas componentes frecuenciales de la señal de entrada se atenúen más que otras.
- Una modificación de carácter aleatorio de la señal de entrada.
- La aparición, en la señal de salida, de frecuencias diferentes a las presentes en la señal de entrada.
- Ninguna de las anteriores.

**Respuesta**: Que algunas componentes frecuenciales de la señal de entrada se atenúen más que otras.
**Justificación**: La **distorsión lineal** ocurre cuando un canal tiene una **respuesta en frecuencia no plana** o un **retardo de grupo no constante**. Esto hace que:
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

**Respuesta**: La aparición, en la señal de salida, de frecuencias diferentes a las presentes en la señal de entrada.
**Justificación**: La **distorsión no lineal** es aquella en la que el sistema genera **nuevas componentes espectrales**:
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

**Respuesta**: Va empeorando.
**Justificación**: En una cadena real de amplificadores y atenuadores:
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

**Respuesta**: Codificación de fuente.
**Justificación**: MPEG-2 es un estándar de **compresión de vídeo y audio**, cuyo objetivo es **reducir la cantidad de datos necesarios** para representar el contenido multimedia sin (o con poca) pérdida perceptual.

Eso es exactamente **codificación de fuente**: reducir redundancia y comprimir la información original.

No añade redundancia para corrección de errores (eso sería codificación de canal), ni es un método analógico.

## Cuestión 8

Nos dicen que el campo eléctrico producido por una antena de telefonía móvil es de 50 dBµV…

Seleccione una:
- Incorrecto, el campo no se puede medir en decibelios.
- Incorrecto, la unidad de campo eléctrico es V/m o dB V/m (o sus múltiplos y submúltiplos).
- Correcto, aunque es un valor un poco bajo.
- Ninguna de las anteriores.

**Respuesta**: Incorrecto, la unidad de campo eléctrico es V/m o dB V/m (o sus múltiplos y submúltiplos).
**Justificación**: El campo eléctrico **siempre** debe expresarse con unidad de **voltios por metro (V/m)**.  
En decibelios, se usa **dB V/m**, **dBµV/m**, etc.

Un valor como **50 dBµV** _sin “/m”_ corresponde a una **tensión**, no a un campo eléctrico. Por tanto, está incorrectamente expresado.