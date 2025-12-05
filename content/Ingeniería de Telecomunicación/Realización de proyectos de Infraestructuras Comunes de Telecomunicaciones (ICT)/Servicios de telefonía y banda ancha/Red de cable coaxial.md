---
title: Red de cables coaxial
date: 2025-12-05
---
Se trata del vehículo tradicional para redes de banda ancha y TV (redes “de cable” con tecnología HFC).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre las redes de alimentación de los operadores del servicio y la de distribución de la ICT del inmueble, y delimita las responsabilidades en cuanto a mantenimiento entre el operador del servicio y la propiedad del inmueble.

![[Punto_interconexión_red_coaxial.png]]

El cable se podrá distribuir en “estrella” (un coaxial desde el RITI a cada PAU) o en “árbol-rama” (distribución con derivadores, similar a la de RTV pero de “abajo hacia arriba”):
- Red de distribución en estrella. El panel de conexión o regleta de entrada estará constituido por los derivadores necesarios para alimentar la red de distribución de la edificación cuyas salidas estarán dotadas con conectores tipo F hembra dotados con la correspondiente carga anti-violable. El panel de conexión o regleta de salida estará constituido por los propios cables de la red de distribución de la edificación terminados con conectores tipo F macho, dotados con la coca suficiente como para permitir posibles reconfiguraciones.
- Red de distribución en árbol-rama. Tanto el panel de conexión o regleta de entrada como el de salida, estarán dotados con tantos conectores tipo F hembra (entrada) o macho (salida), como árboles constituyan la red de distribución. El espacio interior del registro principal coaxial deberá ser suficiente para permitir la instalación de una cantidad de elementos de reparto con tantas salidas como conectores de salida que se instalen en el punto de interconexión y, en su caso, de los elementos amplificadores necesarios.

En los puntos de interconexión de redes de cables coaxiales configuradas en árbol-rama, todos los conectores que constituyen las regletas deberán estar convenientemente etiquetados de forma que cada uno de ellos identifique inequívocamente cada vivienda, local o estancia común a los que da servicio.

En la siguiente imagen se muestran:
- Conector tipo F macho (izquierda).
- Conector tipo F hembra (derecha).

![[Conectores_coaxiales.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT del inmueble. De nuevo debemos distinguir entre distribución en estrella y en árbol-rama:
- Red de distribución en estrella (cables directos del RITI al PAU): En este caso los cables de la red de distribución se encuentran, en este punto, en paso hacia la red de dispersión, por lo que el punto de distribución carece de implementación física, esto es, en el registro secundario no habrá conexiones.
- Red de distribución en árbol-rama: En este caso, el punto de distribución estará constituido por uno o varios derivadores con el número más reducido posible de salidas, terminadas en un conector tipo F con pin, capaz de alimentar a todos los PAU’s que atienda la red de dispersión que nace en el registro secundario; las salidas no utilizadas serán terminadas con una carga tipo F. La siguiente imagen muestra un esquema con este tipo de red de distribución.

![[Punto_distribución_coaxial_arbol_rama.png]]