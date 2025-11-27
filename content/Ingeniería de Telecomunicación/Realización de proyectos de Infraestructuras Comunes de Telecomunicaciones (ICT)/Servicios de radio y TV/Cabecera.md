---
title: Cabecera
date: 2025-11-27
---
Ahora nos vamos a ocupar del diseño de la cabecera de amplificación. Como ya sabemos, esta parte residirá en el RITS, en un espacio al efecto llamado “Registro Principal de RTV”. Antes de nada, debemos saber que, hoy día, nos podemos encontrar con dos tipos diferentes de cabecera:
- Las basadas en central amplificadora: una central amplificadora es un sistema que integra varios amplificadores programables y está pensada para realizar todo el trabajo (o casi todo) sin apenas ningún elemento adicional.
- Las basadas en módulos: se trata de colocar en serie varios módulos que van amplificando y mezclando (sumando) las señales necesarias. Muchas veces se habla de “cabecera con monocanales” porque tradicionalmente cada módulo procesaba solamente un canal en frecuencia (portadora). Hoy día existen módulos monocanal y otros multicanal que pueden ser combinados.

En cuanto a pros y contras de ambas opciones debemos decir que la versión modular es más escalable: podemos amplificar una sola portadora o muchas y añadir más cuando queramos, prácticamente sin límite. Además, la potencia de salida de los módulos independientes va a ser mayor siendo recomendables en instalaciones muy grandes. Respecto a las centralitas, podemos decir que es una opción sencilla y eficiente para instalaciones pequeñas y/o medianas.

Respecto al precio de ambas soluciones, en un catálogo ya obsoleto vemos una central amplificadora a 560 euros y el módulo monocanal básico a 80 euros (7 veces menos). Desde este punto de vista, a partir de 7 módulos (aproximadamente) la central nos sale más rentable.

Sea cual sea la opción elegida, para realizar un diseño debemos saber qué frecuencias (portadoras) vamos a necesitar amplificar y qué potencia (o nivel de salida) necesitaremos en cada una de ellas. Para conocer el nivel adecuado deberemos primero realizar los cálculos de atenuación expuestos en el apartado siguiente. Para saber cuáles son los canales a amplificar procederemos así:

- La banda de FM se va a amplificar completa, con lo que lograremos servicio para todas las emisoras aunque haya alguna que aparezca como nueva después de realizada la instalación. Las centralitas permiten amplificar la radio FM y para la versión modular existen módulos específicos para esto.
- Para el servicio de radio digital DAB se procede igual que con la FM.
- Si existe satélite, normalmente se tratará de un operador de TV satélite de pago y deberemos amplificar toda su señal que bajará a los usuarios abonados y no abonados (quién disponga de decodificador en regla podrá utilizarla). Esto podemos hacerlo de nuevo con una centralita o con un módulo para “frecuencia intermedia de satélite” o “unidad de satélite”.
- Para los canales de TDT procederemos como se comenta en el párrafo siguiente: *El reglamento de ICT’s establece que debemos distribuir todas las señales de TDT (codificadas o no) que dispongan de licencia y cuyo nivel de señal en la zona supere un mínimo estipulado: el campo eléctrico medido en dBmV/m debe superar:* ***3+20log<sub>10</sub>\[f (MHz)\]***.


En la siguiente imagen se muestra una cabecera modular (arriba) y una centralita amplificadora programable (abajo).

![[Cabecer_modular_y_centralita_amplificadora.png]]

¿Qué señales tienen licencia en determinada zona? La página oficial: [www.televisiondigital.es](http://www.televisiondigital.es/) nos informa de la mayoría. Nótese que el número de canal que aparece en las dos últimas columnas es una forma de informar de la frecuencia de cada portadora (en una portadora de TDT puede haber hasta 5 “canales” o, mejor dicho: programas diferentes). Esa numeración procede de una tabla utilizada internacionalmente que reproducimos al final de este capítulo ([[Anexo I Tabla de canales de TV]]). Aparte de los canales de la tabla situada en el apartado [[Elementos de captación#Diseño de elementos de captación]] debemos saber que:

- Ahí pueden no salir las frecuencias de las licencias autonómicas. Normalmente, existirá una portadora autonómica en la frecuencia reservada a la provincia que corresponda. Ver mapa a continuación(se sigue utilizando la numeración del ([[Anexo I Tabla de canales de TV]]).
- Pueden existir licencias locales. Normalmente, será sólo una portadora concedida por el gobierno autonómico. Por ejemplo en Vigo hay dos operadores, o programas, locales emitiendo en el canal, o frecuencia, 34 (compartido entre TeleVigo, Localia y, todavía sin emisión, Telecíes y Faro de Vigo).

![[Frecuencias_provinciales.png]]

Conocidos los canales autorizados, deberíamos confirmar que tienen la intensidad de señal suficiente. Para realizar esto correctamente deberíamos subir (con medidor de campo y antena patrón) a algún edificio cercano al proyectado, a ser posible, de altura parecida (nótese que en el edificio proyectado, normalmente, no se habrán comenzado las obras). Dada la dificultad de esta operación, muchas veces se intenta lograr datos a través de los operadores de radiodifusión (en Galicia: [www.cellnex.com](https://www.cellnex.com/) y [www.retegal.es](http://www.retegal.es/)) o, incluso, se supone que todos los canales habilitados tendrán intensidad suficiente.

Para terminar este apartado debemos prestar un poco de atención a las características técnicas de los dispositivos utilizados para el diseño de cabeceras. Para ello, tendremos en mente que queremos diseñar una cabecera para nuestro edificio en C/ Gran Vía 1, Vigo. Tendremos que distribuir los siguientes canales: radio FM, radio DAB, un operador de satélite (Digital+) y canales TDT en las frecuencias: 34 (tdt local), 24, 31, 37 (tdt autonómica), 39, 43, 45, 46 y 48.