---
title: Introducción
date: 2025-12-01
---
El objetivo es establecer las características técnicas mínimas que deberán cumplir las infraestructuras comunes de telecomunicaciones (ICT) destinadas a proporcionar el acceso a los servicios de telefonía disponible al público (STDP) y a los servicios de telecomunicaciones de banda ancha prestados a través de redes públicas de comunicaciones electrónicas, prestados por operadores habilitados para el establecimiento y explotación de las mismas.

La normativa viene especificada en el Anexo II del R.D 346/2011 y en la Orden Ministerial ITC/1644/2011 que desarrolla el reglamento.

## Definición de la red de la edificación

La red de la edificación es el conjunto de conductores, elementos de conexión y equipos, tanto activos como pasivos, que es necesario instalar para establecer la conexión entre las bases de acceso de terminal (BAT) y la red exterior de alimentación.

Se divide en los siguientes tramos:
- Red de alimentación.
- Red de distribución.
- Red de dispersión.
- Red interior de usuario.

### Red de alimentación

Es la red de conexión de los operadores con el edificio. Es propiedad de los operadores, y termina en el punto de interconexión

Existen dos posibilidades en función del método de enlace utilizado por los operadores entre sus centrales y la edificación:
1. **Cuando el enlace se produce mediante cable**: Es la parte de la red de la edificación, propiedad del operador, formada por los cables que unen las centrales o nodos de comunicaciones con la edificación. Se introduce en la ICT de la edificación a través de la arqueta de entrada y de la canalización externa hasta el registro de enlace, donde se encuentra el punto de entrada general, y de donde parte la canalización de enlace, hasta llegar al registro principal ubicado en el recinto de instalaciones de telecomunicación inferior (RITI), donde se ubica el punto de interconexión. Incluirá todos los elementos, activos o pasivos, necesarios para entregar a la red de distribución de la edificación las señales de servicio, en condiciones de ser distribuidas.
2. **Cuando el enlace se produce por medios radioeléctricos**: Es la parte de la red de la edificación formada por los elementos de captación de las señales emitidas por las estaciones base de los operadores, equipos de recepción y procesado de dichas señales y los cables necesarios para dejarlas disponibles para el servicio en el correspondiente punto de interconexión de la edificación. Los elementos de captación irán situados en la cubierta o azotea de la edificación introduciéndose en la ICT de la edificación a través del correspondiente elemento pasamuros y la canalización de enlace hasta el recinto de instalaciones de telecomunicación superior (RITS), donde irán instalados los equipos de recepción y procesado de las señales captadas y de donde, a través de la canalización principal de la ICT, partirán los cables de unión con el RITI donde se encuentra el punto de interconexión ubicado en el registro principal.

El diseño y dimensionado de la red de alimentación, así como su realización, serán responsabilidad de los operadores del servicio.

### Red de distribución

Es la parte de la red formada por los cables, de **pares trenzados (o en su caso de pares), de fibra óptica y coaxiales**, y demás elementos que prolongan los cables de la red de alimentación, distribuyéndolos por la edificación para poder dar el servicio a cada posible usuario.

Parte del punto de interconexión situado en el registro principal que se encuentra en el RITI y, a través de la canalización principal, enlaza con la red de dispersión en los puntos de distribución situados en los registros secundarios. La red de distribución es única para cada tecnología de acceso, con independencia del número de operadores que la utilicen para prestar servicio en la edificación.

Su diseño y realización será responsabilidad de la propiedad de la edificación.

### Red de dispersión

Es la parte de la red, formada por el conjunto de cables, de pares trenzados (o en su caso de pares), de fibra óptica y coaxiales, y demás elementos, que une la red de distribución con cada vivienda, local o estancia común.

Parte de los puntos de distribución, situados en los registros secundarios (en ocasiones en el registro principal) y, a través de la canalización secundaria (en ocasiones a través de la principal y de la secundaria), enlaza con la red interior de usuario en los puntos de acceso al usuario situados en los registros de terminación de red de cada vivienda, local o estancia común.

Su diseño y realización será responsabilidad de la propiedad de la edificación.

### Red interior de usuario

Aun existiendo las tres posibles redes de distribución y dispersión en el edificio, la red interior de la vivienda se realizará solamente **con cable de pares trenzados** en los casos en que la red de distribución y dispersión sea de cable de pares trenzados, cable de pares o cable de fibra óptica y **con cable coaxial** cuando la red de distribución y dispersión sea de cable coaxial.

De esta forma, la red interior de usuario es la parte de la red formada por los cables de pares trenzados, cables coaxiales (cuando existan) y demás elementos que transcurren por el interior de cada domicilio de usuario, soportando los servicios de telefonía disponible al público y de telecomunicaciones de banda ancha. Da continuidad a la red de dispersión de la ICT comenzando en los puntos de acceso al usuario y, a través de la canalización interior de usuario configurada en estrella, finalizando en las bases de acceso de terminal situadas en los registros de toma.

Su diseño y realización será responsabilidad de la propiedad de la edificación.

![[Esquema_Red_Edificación.png]]


## Tipos de redes interiores al edificio

El Reglamento incluya tres posibles redes para los servicios de telecomunicaciones de telefonía disponible al público y de banda ancha. El proyectista debe elegir el tipo (o tipos) de cableado a emplear:
- Red de cable de pares trenzados (UTP de 8 hilos) o Red de cable de pares (telefónicos): *El R.D. 346/2011 en su Anexo II Punto 3.1.1 establece que la red de cable de pares trenzados se instalará cuando la distancia entre el punto de interconexión y el punto de acceso al usuario más alejado se a inferior a 100 m. En caso contrario, de que fuese superior, se diseñará e instalará la red de cable de pares*.
- Red de cable coaxial.
- Red de cable de fibra óptica.

El Proyecto técnico original es el que servirá para solicitar la licencia de obra y se diseña en ausencia de información de las tecnologías que pueden aplicar los operadores.

El punto 3 del anexo II del Reglamento otorga al proyectista la responsabilidad final de decidir las tecnologías a utilizar en las redes de distribución y dispersión. Esta decisión se debe basar en la información obtenida mediante el procedimiento de consulta e intercambio de información entre el proyectista de la ICT y los operadores de telecomunicación establecido en el artículo 8 del R.D. 346/2011 sobre la tecnología empleada en sus redes de acceso (cable de pares, cable coaxial o fibra óptica), a partir de la cual modificará en su caso, el Proyecto Técnico Original.

Por último señalar que aun existiendo tres posibles redes de distribución y dispersión en el edificio, como ya se ha visto, **la red interior de la vivienda se realiza con cable de pares trenzados**, en los casos en que la red de distribución y de dispersión sea de cable de pares trenzados, cable de pares o cable de fibra óptica, (en este caso se instalará además una toma de F.O. en la estancia principal) y **con cable coaxial** cuando la red de distribución y de dispersión sea de cable coaxial.