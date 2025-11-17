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
- La potencia de ruido en W se obtiene a partir de la temperatura con la fórmula:  **n=kTB<sub>W</sub>**, donde n es la potencia del ruido en W, T es la temperatura de ruido (ºK), B<sub>W</sub> es el ancho de banda (o rango de frecuencias en el que trabaja el sistema, Hz) y k es la constante de Boltzman: 1,381·10<sup>-23</sup> J/°K ó (W/(Hz · ºK)).