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
- La potencia de ruido en W se obtiene a partir de la temperatura con la fórmula:  **n=kTB<sub>w</sub>**, donde n es la potencia del ruido en W, T es la temperatura de ruido (ºK), B<sub>w</sub> es el ancho de banda (o rango de frecuencias en el que trabaja el sistema, Hz) y k es la constante de Boltzman: 1,381·10<sup>-23</sup> J/°K ó (W/(Hz · ºK)). Esta fórmula se usa para calcular la potencia de ruido térmico real que genera cualquier resistencia (o cualquier dispositivo pasivo en general) debido a su temperatura física. En telecomunicaciones, se usa esta misma fórmula para calcular el ruido térmico, que se modela con la temperatura de ruido y no tiene nada que ver con la temperatura física.

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
Donde podemos ver que el ruido a la entrada se puede medir con una temperatura (T<sub>e</sub>) y el cuadripolo presenta una temperatura equivalente de ruido: T<sub>eq</sub> (referida a la entrada siempre, por eso se le multiplica la ganancia del cuadripolo). Dichas temperaturas de ruido se “encuentran” en la entrada de cuadripolo y se suman (el ruido es acumulativo). **“Medir” T<sub>eq</sub> es problema del fabricante del cuadripolo*** (comercialmente “módulo amplificador”, “receptor de satélite”…).

Normalmente, los fabricantes no nos van a dar la temperatura equivalente de ruido (T<sub>eq</sub>) sino un número relacionado llamado **“factor de ruido”**. El factor de ruido se define como: “Cociente entre las relaciones señal a ruido en la entrada y en la salida del cuadripolo si la temperatura de ruido a la entrada es T<sub>0</sub> (temperatura de referencia: T<sub>0</sub> =290 °K). La relación del factor de ruido con la temperatura equivalente es muy simple:

$$
f_r = \left.\frac{\left(\frac{S}{N}\right)_e}{\left(\frac{S}{N}\right)_s}\right|_{T_e = T_0} = \left.\frac{\frac{s_e}{kT_eB_W}}{\frac{s_eg}{k(T_e+T_{eq}B_Wg)}}\right|_{T_e = T_0} = \left.\frac{T_e+T_{eq}}{T_e}\right|_{T_e = T_0} = 1 + \frac{T_{eq}}{T_0}
$$

El fabricante nos proporciona el factor de ruido en dB, denominado **figura de ruido**: 

$$
F_r (dB) = 10 · \log_{10}(f_r)
$$

A partir de él, se puede calcular T<sub>eq</sub> y tenerlo en cuenta para calcular el ruido de todo el sistema.

Aunque generalmente es de poca importancia, los atenuadores (que podemos considerar como cuadripolos) introducen ruido. En este caso existe una fórmula que nos permite calcular su factor de ruido a partir de su temperatura física:

$$
T_{eq} = T_f(a-1)
$$

$$
f_r = 1 + \frac{T_{eq}}{T_0} = 1 + \frac{T_f}{T_0}(a-1)
$$

Donde T<sub>f</sub> es la temperatura física del atenuador (normalmente algún tipo de cable o guía de onda), a es la atenuación en unidades naturales y T<sub>0</sub> vale 290 ºK. Nótese que, si  T<sub>f</sub> es igual a T<sub>0</sub> tendremos  f<sub>r</sub> = a.  T<sub>0</sub>, es un valor (290 °K = 17 °C) bastante bueno para aproximar la temperatura media anual en la zona templada.

Cuando tenemos varios cuadripolos conectados en cascada podemos calcular la temperatura de ruido equivalente (o el factor de ruido) del conjunto. Por ejemplo, para el caso más simple (dos cuadripolos):

![[Cuadripolos_cascada.png]]

$$
n_s = kT_0B_wg_1g_2 + kT_{eq1}B_wg_1g_2 + kT_{eq2}B_wg_2 = kB_wg_1g_2(T_0 + T_{eq1} + \frac{T_{eq2}}{g_1}) = k(T_0 + T_{eq})B_wg_1g_2
$$

$$
g = g_1g_2
$$

$$
T_{eq} = T_{eq1} + \frac{T_{eq2}}{g_1}
$$

Existe una fórmula que permite calcular el factor de ruido conjunto para n cuadripolos en cascada: **“Fórmula de Friis”** o “Fórmula de Friis para el Factor de Ruido” (nombre utilizado para distinguirla de otra fórmula, utilizada en radiocomunicación, y que también se debe al ingeniero Harald T. Friis).

$$
T_{eq} = T_{eq1} + \frac{T_{eq2}}{g_1} + \frac{T_{eq3}}{g_1g_2} + ... + \frac{T_{eqn}}{g_1g_2...g_{n-1}}
$$

$$
f_{r} = f_{r1} + \frac{f_{r2}-1}{g_1} + \frac{f_{r3}-1}{g_1g_2} + ... + \frac{f_{rn}-1}{g_1g_2...g_{n-1}}
$$

