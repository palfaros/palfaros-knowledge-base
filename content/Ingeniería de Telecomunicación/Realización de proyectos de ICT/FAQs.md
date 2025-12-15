---
title: FAQs
date: 2025-12-15
---
## Pregunta 1

*Buenas, a parte de hacer el proyecto y su correspondiente dirección de obra.*
*¿Es necesario hacer un certificado de la instalación? (Similar al Certificado de las instalaciones eléctricas)*
*Y en caso afirmativo que mediciones hay que hacer.**

Hola,

Efectivamente hay que hacer un certificado de fin de obra y un protocolo de mediciones. Vienen en los anexos IV y V de la Orden ITC/1644/2011, de 10 de junio, por la que se desarrolla el Reglamento regulador de las infraestructuras comunes de telecomunicaciones para el acceso a los servicios de telecomunicación en el interior de las edificaciones, aprobado por el Real Decreto 346/2011, de 11 de marzo.

Saludos

## Pregunta 2

*Buenas. No se si entra dentro del ámbito del curso, pero me gustaría saber como escoger una antena de TV y para que sirve el diagrama polar que viene en muchos catálogos.*

*Gracias*

Hola,

El diagrama polar que viene en los catálogos te marca la ganancia y la directividad, en nuestro caso de recepción de señal. Cuanto más grande y estrecho sea el lóbulo principal, la antena es más direccional y digamos que "mejor recibe" (si apuntas bien al transmisor).

El elegir una antena u otra puede depender del nivel de potencia de señal que recibas donde estés ubicado, de las señales interferentes que puedas llegar a tener,...

Saludos

## Pregunta 3

*Buenas, ¿cuál es el procedimiento cuando el nivel de señales no esté entre los parámetros?*
*caso1: cuando el nivel inferior esté por debajo*
*caso 2: cuando el nivel superior esté por encima del permitido*

  
¿En una bajante de TV?
Si la diseñas como se dice en el curso eso no puede pasar.
Esto es, al calcular el nivel de cabecera:
NivelCab > NivMinimo (47 dBuV) + AT (peor toma)
NivelCab < NivMaximo (70 dBuV) + AT (mejor toma)

Si el nivel de salida de la cabecera (ajustando la amplificación) todas las tomas estarán bien.

Lo que sí puede pasar es que (sobre todo en edificios muy grandes), pueda salirnos mucha diferencia entre la mejor y la peor toma. Una diferencia mayor a 70-47 = 23 dB haría que nos salga un rango imposible (el mínimo valor de la cabecera sería mayor que el máximo).

En ese caso hay que modificar la instalación... por ejemplo:
- Hacer varias bajantes, por ejemplo una para pisos pares y otra impares.
- Dividirla por la mitad colocando un amplificador intermedio (amplificador de línea):  https://www.televes.com/es/distribucion-tv/filtrado-y-amplificacion/complementos/amplificadores-de-linea.html

Saludos


