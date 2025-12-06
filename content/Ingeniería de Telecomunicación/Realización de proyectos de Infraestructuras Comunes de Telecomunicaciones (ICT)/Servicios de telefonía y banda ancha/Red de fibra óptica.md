---
title: Red de fibra óptica
date: 2025-12-06
---
Se trata del nuevo medio para redes de banda ancha y TV (FTTH).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre las redes de alimentación de los operadores del servicio y la de distribución de la ICT del inmueble.

![[Punto_interconexión_red_fibra_óptica.png]]

Para el caso de redes de alimentación constituidas por cables de fibra óptica, sus fibras deberán estar terminadas en conectores tipo SC/APC con su correspondiente adaptador, agrupados en un repartidor de conectores de entrada, que hará las veces de panel de conexión o regleta de entrada.

Todas las fibras ópticas de la red de distribución se terminarán en conectores tipo SC/APC con su correspondiente adaptador, agrupados en un panel de conectores de salida, común para todos los operadores del servicio.

La conexión entre el panel común de conectores de salida de la red del edificio y los repartidores de conectores de entrada de los diferentes operadores, se realizará mediante cordones o latiguillos de fibra óptica terminados en ambos extremos en conectores de tipo SC/APC.

![[Conector_SC-APC.png]]

Los repartidores de conectores de entrada de todos los operadores y el panel común de conectores de salida, estarán situados en el registro principal óptico ubicado en el RITI o RITU. El espacio interior previsto para el registro principal óptico deberá ser suficiente para permitir la instalación de una cantidad de conectores de entrada que sea dos veces la cantidad de conectores de salida que se instalen en el punto de interconexión, así como un espacio adicional para el guiado de los cordones o latiguillos de interconexión y el almacenamiento de la longitud sobrante de cable.

![[Regleta_conexión_fibra_óptica.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT del inmueble. Para la fibra se distinguen dos casos:
- Cuando las fibras ópticas de la red de distribución sean distintas de los cables de acometida de fibra óptica de la red de dispersión, el punto de distribución estará formado por una o varias cajas de segregación en las que terminarán ambos tipos de fibras. En cada caja de segregación se almacenarán los empalmes entre las fibras ópticas de distribución y las de las acometidas. En cualquier caso, en el punto de distribución se almacenarán bucles de fibra óptica con la holgura suficiente para poder reconfigurar las conexiones entre las fibras ópticas de la red de distribución y las de la red de dispersión (cortar y empalmar o conectar).
- Cuando las fibras ópticas de las acometidas de la red de dispersión sean las mismas fibras ópticas de los cables de la red de distribución, dichas fibras estarán en paso en el punto de distribución. El punto de distribución estará formado por una o varias cajas de segregación en las que se dejarán almacenados, únicamente, los bucles de las fibras ópticas de reserva, con la longitud suficiente para poder llegar hasta el PAU más alejado de esa planta. Los extremos de las fibras ópticas de la red de dispersión se identificarán mediante etiquetas que indicarán los puntos de acceso al usuario a los que dan servicio. El diseño, dimensionado e instalación de los puntos de distribución será responsabilidad de la propiedad de la edificación.

![[Punto_distribución_fibra_óptica.png]]

### Punto de acceso al usuario (PAU)

Realiza la unión entre la red de dispersión y la red interior de usuario de la ICT del inmueble

El punto de acceso al usuario (PAU) estará formado por:
- La roseta con tantos conectores SC/APC (y los correspondientes adaptadores) de terminación como fibras ópticas de los cables de acometida se hayan instalado en la red de dispersión.
- La unidad de terminación de red óptica que se conectará por una parte a la roseta descrita en el párrafo anterior y, por otra, a la red interior de usuario de la ICT. Esta unidad de terminación será la que proporcione al usuario final los puntos de acceso a los diferentes servicios, con sus facilidades simultáneas como “medio de corte” y “punto de prueba”.

**La red de interior de usuario será de pares trenzados, salvo en la estancia principal (salón) que se instalará una acometida de fibra óptica**. En los extremos de las diferentes ramas de la red interior de usuario de pares trenzados, ubicados en el registro de terminación de red, se equiparán conectores macho miniatura de ocho vías (RJ45); en estos extremos se dejará una longitud de cable sobrante con la suficiente holgura como para llegar a cualquiera de las partes interiores de los diferentes compartimentos del registro de terminación de red. Estos mismos extremos se identificarán mediante etiquetas que indicarán la ubicación del conector de las bases de acceso de terminal (BAT) a las que dan servicio.

Asimismo, para que exista una continuidad entre las regletas de salida del punto de interconexión y algunas de las bases de acceso de terminal (BAT) de la red interior de usuario de pares trenzados, se instalará en el registro de terminación de red un accesorio multiplexor pasivo que, por una parte, estará equipado con un latiguillo flexible terminado en un conector macho miniatura de ocho vías, enchufado a su vez en un conector o roseta de terminación de una de las líneas de la red de dispersión y, por otra parte, tenga como mínimo tantas bocas hembra miniatura de ocho vías (RJ45) como estancias servidas por la red interior de usuario de pares trenzados.

|                                                |                                        |                                              |                                                                      |
| ---------------------------------------------- | -------------------------------------- | -------------------------------------------- | -------------------------------------------------------------------- |
| Realización del Punto de Acceso al Usuario<br> |                                        |                                              |                                                                      |
|                                                | Medio portador en la Red de dispersión | Medio portador en la Red interior de usuario | Elementos adaptadores en el PAU                                      |
|                                                | Cable de F.O                           | Cables trenzados                             | Roseta óptica ONT Switch Multiplexor pasivo<br>Conectores macho RJ45 |

### Bases de acceso terminal (BAT))

Como es el caso del cableado de pares trenzados, los hilos conductores de cada rama de la red interior se conectarán a los 8 contactos del conector RJ-45 hembra miniatura de 8 vías de la BAT en que terminen.

Además en relación a la toma de fibra óptica ubicada en la estancia principal, la fibra se terminará en un BAT de fibra óptica con adaptador de tipo SC/APC.

## Esquema general

La siguiente imagen muestra un esquema general de una red de cables de fibra óptica.

![[Esquema_red_cables_fibra_óptica.png]]

La siguiente imagen muestra un esquema general de la ubicación de elementos en el Registro de Terminación de red.

![[Esquema_ubicación_elementos_RTR.png]]
