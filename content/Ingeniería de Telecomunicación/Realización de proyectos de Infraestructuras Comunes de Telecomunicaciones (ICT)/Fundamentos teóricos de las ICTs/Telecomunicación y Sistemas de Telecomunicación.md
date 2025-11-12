---
title: Telecomunicación y Sistemas de Telecomunicación
date: 2025-11-12
---
## Telecomunicación

Vamos ahora a realizar una brevísima introducción a las telecomunicaciones presentando los conocimientos necesarios para realizar con éxito un proyecto de ICT. Comenzando por la definición de telecomunicación, adoptamos la de la ITU (*International Telecommunications Union*):

***<<Es toda emisión, transmisión y recepción de signos, señales, escritos e imágenes, sonidos e informaciones de cualquier naturaleza por hilo, radioelectricidad, medios ópticos u otros sistemas electromagnéticos.>>***

Etimológicamente telecomunicación **(tele + comunicación)** significa **“comunicación a distancia”**. Vemos que la definición va en esa línea pero introduce la necesidad de que la comunicación se haga mediante sistemas electromagnéticos (que incluyen a los sistemas ópticos y a todos los sistemas eléctricos y electrónicos). Así se excluyen deliberadamente sistemas de comunicación no electromagnéticos como el correo postal.

## Señales

Después de definir telecomunicación, probablemente lo más pertinente es definir señal. En el mundo de la telecomunicación, toda información enviada o recibida recibe ese nombre. De nuevo según la ITU, una señal es:

***<<Un flujo de potencia electromagnética variable en el tiempo, de forma que dicha variación representa la información a transmitir.>>***

Vemos pues que en una señal la información va “codificada” en la variación de alguna variable electromagnética: tensión (la más habitual), corriente, campo eléctrico… Desde un punto de vista general las señales se pueden clasificar así:

- **Analógicas:** la información va codificada en alguna magnitud física medible (generalmente tensión) que además es un valor real (dentro de un intervalo permitido) y varía con el tiempo de forma continua. Una señal analógica puede verse matemáticamente como una función real de variable real y acotada.
	
	![[Señal_Analógica.png]]
	
	En la imagen anterior se muestra un ejemplo de señal analógica: TV PAL (extinta). El voltaje en cada instante significa algo: el pulso negativo indica que empieza una línea de pantalla, el valor entre pulso y pulso es el brillo de cada punto.
	
- **Digitales:** la información consiste en una serie de símbolos tomados de un alfabeto finito. Matemáticamente se puede ver como una sucesión (el tiempo ya no es continuo) de elementos tomados de un conjunto finito (alfabeto), por ejemplo un texto en español es una señal digital. Las señales digitales, estrictamente, no pueden ser electromagnéticas (ya que todas las variables electromagnéticas son continuas). Sin embargo, es posible “introducir una señal digital” dentro de una señal electromagnética. En este caso, definiremos una duración para cada símbolo (tiempo de símbolo) y en ese intervalo introduciremos una forma de señal diferente para cada elemento del alfabeto. Realmente, las señales digitales siempre se representan mediante una señal analógica (forma de onda) y eso hace que, a veces, tengamos que tenerlas en cuenta como señal analógica. Esta “paradoja” es, muchas veces, fuente de confusión y es mejor conocerla desde el principio. ![[Señal_Digital.png]]
