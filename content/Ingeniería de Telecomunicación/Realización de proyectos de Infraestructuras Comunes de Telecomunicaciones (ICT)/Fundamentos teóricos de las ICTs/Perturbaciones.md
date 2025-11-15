---
title: Perturbaciones
date: 2025-11-15
---
Entendemos como **perturbación** a “Cualquier actuación (o conjunto de ellas) externa o interna sobre un Sistema de Comunicaciones, que provocan que la señal de salida no sea la que se espera”. Nótese que para estudiar un sistema de comunicaciones, vamos a modelarlo como un conjunto de cuadripolos conectados en cascada (de forma que la señal de salida de uno es la señal de entrada del siguiente). De ahí que el estudio de las perturbaciones se base en ver cómo afectan a los cuadripolos. Los tipos de perturbaciones más importantes son:
- **Distorsión**: hablamos de distorsión cuando alguno (o varios) de los cuadripolos del sistema realiza modificaciones no deseadas en la señal. Por ejemplo, cuando un amplificador introduce no linealidades (en vez de sólo multiplicar **y(t) = 100x(t)**, puede introducir alguna no linealidad debida al comportamiento no ideal de sus transistores **y(t) = 100x(t) + 0.1\[x(t)\]<sup>2</sup>**). La distorsión puede ser lineal o no lineal según el tipo de modificación introducida:
	- Distorsión lineal: Es la producida por los elementos lineales (filtros, líneas de transmisión, atenuadores…) y por tanto, es independiente de la amplitud de las señales de entrada.
	- Distorsión no lineal: Es la asociada a los elementos activos de un sistema de comunicaciones, típicamente los amplificadores trabajando en zona no lineal, en los que se producen fenómenos no lineales. En este caso esta distorsión depende del nivel de entrada.
	La distorsión podemos intentar corregirla añadiendo un sistema que intente invertir la modificación realizada (ecualización). Esta acción es más fácil cuando la distorsión es lineal. La distorsión es una perturbación interna, ya que procede del comportamiento no ideal de los propios componentes del sistema. El tipo de distorsión más habitual e importante es la intermodulación, de la que se tratará más adelante.
- **Interferencia**: la interferencia es una señal de otro sistema que, por accidente, aparece sumada a nuestra señal de interés, normalmente debilitada pero puede ser lo bastante importante como para afectar al funcionamiento. Se trata por tanto de una perturbación externa. Una de las interferencias más comunes es la diafonía. La diafonía consiste en la contaminación radioeléctrica entre cables que comparten canalización. En los pares de cobre que llevan la señal telefónica (hablamos de muchos pares en la misma manguera), podemos tener un par actuando como una “antena emisora” y otros “recibiendo” esa señal que pasa a ser una interferencia. Por eso en este tipo de mangueras (y en los cables UTP utilizados en redes informáticas) se trenzan los cables como forma de eliminar las diafonías.
- **Ruido**: llamamos ruido a señales aleatorias (y por tanto incontrolables) que se suman a la señal deseada entorpeciendo su correcta recepción (por supuesto depende de la potencia del ruido frente a la de la señal). El ruido puede ser externo (ruido introducido en un canal radioeléctrico como el aire) o interno (todos los circuitos activos, sobre todo los amplificadores, introducen ruido). Debemos entender que el ruido en una señal analógica es acumulativo, esto es: una vez introducido nunca podemos eliminarlo, es más, todo sistema tenderá a introducir más. Los amplificadores no distinguen las señales a su entrada y van a amplificar tanto la señal como el ruido, además introducirán más ruido (debido a los movimientos aleatorios de electrones y huecos que aparecen en el interior de los semiconductores debido a su temperatura de trabajo). Nótese que las señales que transportan bits, serán analógicas hasta que sean decodificadas (hasta que se extraigan los bits) y esa extracción sólo será posible si el ruido está por debajo de un máximo (modulaciones de umbral).

Normalmente para medir las perturbaciones se utiliza la relación de potencias (en dB) entre la señal deseada y las “señales perturbadoras”. Así hablaremos de relación de intermodulación (relación entre la señal deseada y las que aparecen por culpa de la intermodulación), relación portadora interferente (relación C/I, carrier to interference ratio) o relación portadora a ruido (C/N ó CNR, carrier to noise ratio). Hablamos de portadora (carrier) cuando es la señal modulada (la que se transmite) la que sufre las perturbaciones. Una vez demodulada, si tenemos una señal analógica (como el audio de la radio FM), tendremos una relación señal a ruido (SNR, signal to noise ratio) que es función de la relación C/N que recibió la antena. En señales digitales, el resultado de la demodulación es una secuencia de bits y no podemos hablar de SNR sino de probabilidad de error en el bit o tasa de bits erróneos (BER, bit error rate). Por supuesto, la BER también es función de la C/N que existía antes de la demodulación.

*Si recibimos una señal analógica digitalizada (como la voz en un teléfono móvil), esa señal fue convertida en bits en origen (eso es codificación de fuente) pero ese proceso no está exento de errores (ese error cometido a propósito pero controlado se llama ruido de cuantificación). La secuencia binaria se modula pasando a ser analógica. La recibiremos con cierto ruido (cierta relación C/I) que permitirá demodular los bits con cierta BER. Después se decodificará (se recalcularán los valores del audio analógico). Si la BER es baja (C/I está por debajo del umbral de funcionamiento), la decodificación sólo tendrá el ruido de cuantificación (que se controla para que sea inaudible al oído humano).*

## Aplicación a las instalaciones de ICT

La normativa de ICT hace referencia entre otras a la respuesta amplitud/frecuencia de la instalación definiendo especificaciones de respuesta amplitud/frecuencia en canal a para las señales en función del tipo de modulación (ver apartado 4.4.2. del anexo I del R.D. 346/2011) y fija especificaciones de la respuesta amplitud/frecuencia en banda de la red; concretamente 16dB en la banda de 47 a 862 MHz y 20 dB en la banda de 950 a 2150 MHz (ver apartado 4.4.3. del anexo I del R.D 346/2011).

La primera de las especificaciones (amplitud/frecuencia en canal), no puede ser controlada por el proyectista, sino que es responsabilidad del instalador; sin embargo la segunda especificación si deberá ser un cálculo del proyecto. Haremos los cálculos con un ejemplo:

![[Ejemplo_calculo_respuesta_banda.png]]

Las especificaciones de los equipos instalados son las siguientes:

- Mezclador:

	|                           |             |
	| ------------------------- | ----------- |
	| Banda                     | 15-2150 MHz |
	| Perdidas de inserción V/U | 4±0,5dB     |
	| Perdidas de inserción FI  | 4±0,5dB     |
	
- Derivador:
	
	|   |   |
	|---|---|
	|Banda|15-2150 MHz|
	|Nº salidas|2|
	|Perdidas de derivación V/U|10±0,25dB|
	|Perdidas de derivación FI|11±0,25dB|
	|Perdidas de inserción V/U|2±0,25dB|
	|Perdidas de inserción FI|3±0,25dB|

- Repartidor:
	
	|   |   |
	|---|---|
	|Banda|15-2150 MHz|
	|Nº salidas|3|
	|Perdidas de inserción V/U|5±0,25dB|
	|Perdidas de inserción V/U|6±0,25dB|
	
- PAU:
	
	|   |   |
	|---|---|
	|Banda|15-2150 MHz|
	|Perdidas de inserción V/U|1±0dB|
	|Perdidas de inserción FI|1,5±0dB|
	
- Toma de usuario:
	
	|   |   |
	|---|---|
	|Banda|15-2150 MHz|
	|Perdidas de inserción V/U|2±0,5dB|
	|Perdidas de inserción FI|3±0,5dB|
	
- Cable coaxial:
	
	|   |   |
	|---|---|
	|Atenuación a 47 MHz|0,05dB/m|
	|Atenuación a 862 MHz|0,19dB/m|
	|Atenuación a 950 MHz|0,20dB/m|
	|Atenuación a 2150 MHz|0,33dB/m|
	

Calculamos la respuesta amplitud/frecuencia de toda la red:

Primero calculamos la atenuación total del cable coaxial. La longitud total será de 26 metros y la atenuación en los extremos de cada una de las bandas será: