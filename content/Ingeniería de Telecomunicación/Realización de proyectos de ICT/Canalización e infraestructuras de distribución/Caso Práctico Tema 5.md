---
title: Caso Práctico Tema 5
date: 2025-12-13
---
**Supongamos el mismo edificio descrito en los casos prácticos de los temas 3 y 4**
- **Se trata de un edificio que consta de bajo, 3 plantas iguales y ático.**
- **En el bajo hay un local comercial y una zona dedicada a trasteros.**
- **En cada planta tipo (1º, 2º y 3º) hay tres viviendas.**
- **En la planta ático también hay tres viviendas (A y B).**

**Disponemos de los planos que se adjuntan (anexo I). Recordemos que se trataba de planos realizados por la norma antigua (2003).**

**Se pide en relación al cálculo de infraestructura de telecomunicación contestar a las siguientes preguntas:**

## Apartado A

**Dimensiones de la arqueta de entrada**

En función del número de puntos de acceso al usuario de la edificación a los que da servicio, la arqueta (o arquetas, si procede) de entrada deberá tener las dimensiones interiores mínimas que se indican a continuación, con dos puntos para el tendido de los cables.

|                                 |                                                      |
| :-----------------------------: | :--------------------------------------------------: |
| Número de PAU de la edificación | Dimensiones en mm (longitud x anchura x profundidad) |
|            Hasta 20             |                   400 x 400 x 600                    |
|           De 21 a 100           |                   600 x 600 x 800                    |
|           Más de 100            |                   800 x 700 x 820                    |

El total de PAUs del edificio es 3·3 (Viviendas Plantas) + 3 (Viviendas Ático) + 1 (Local comercial) = 13 PAUs. Si asumimos 2 PAUs adicionales para las estancias comunes, el total de PAUs del edificio es 15 (inferior a 20). **Por tanto, las dimensiones de la arqueta de entrada serán 400 x 400 x 600 mm.**

## Apartado B

**Dimensionamiento de la canalización externa**

La canalización externa que va desde la arqueta de entrada hasta el punto de entrada general a la edificación, de la forma más rectilínea posible, estará constituida por tubos de 63 mm de diámetro exterior. En función del número de PAU de la edificación a los que da servicio, se instalarán como mínimo los siguientes números de tubos:

|                     |             |                          |
| :-----------------: | :---------: | :----------------------: |
| N.° de PAU (nota 1) | Nº de tubos | Utilización de los tubos |
|       Hasta 4       |      3      |  2 TBA +STDP, 1 reserva  |
|      De 5 a 20      |      4      | 2 TBA + STDP, 2 reserva  |
|     De 21 a 40      |      5      | 3 TBA + STDP, 2 reserva  |
|      Más de 40      |      6      | 4 TBA + STDP, 2 reserva  |

El número de PAUs de la edificación es 15. Por tanto, **se utilizarán, como mínimo, 4 de tubos de 63 mm de diámetro exterior**.

## Apartado C

**Dimensionamiento de la canalización de enlace superior e inferior**

La **canalización de enlace superior** estará formada por 2 tubos de 40 mm de diámetro superficiales, fijados mediante grapas, bridas, abrazaderas, perfiles o sujeciones separadas, como máximo, 1 metro. Se colocará un registro de enlace de dimensiones mínimas 360 x 360 x 120 mm para la intersección de tramos rectos no alineados.

La **canalización de enlace inferior** se realizará mediante tubos de entre 40 y 63 mm de diámetro. Se colocará un registro de enlace en el punto de intersección entre la canalización externa y la canalización de enlace inferior, al tratarse de dos tramos rectos no alineados. Este registro de enlace irá en pared, con dimensiones mínimas 450 x 450 x 120 mm.

## Apartado D

**Dimensionamiento y características del RITI y del RITS**

Los recintos de instalaciones de telecomunicación (RITI, RITS) tendrán las dimensiones mínimas siguientes, y deberán ser accesibles toda su anchura:

|            |             |              |                  |
| :--------: | :---------: | :----------: | :--------------: |
| Nº de PAU  | Altura (mm) | Anchura (mm) | Profundidad (mm) |
|  Hasta 20  |    2000     |     1000     |       500        |
| De 21 a 45 |    2000     |     1500     |       500        |
| De 46 a 74 |    2000     |     2000     |       500        |
| Más de 74  |    2300     |     2000     |       2000       |

El número de PAUs de la edificación es 15 (inferior a 20). Por tanto, **las dimensiones mínimas del RITI y el RITS serán 2000 x 1000 x 500 mm**.

El RITI se ubicará sobre la rasante. El RITS se ubicará en la cubierta o, como punto más bajo, en la planta ático.

Al tratarse de una edificación con un número de PAUs inferior a 45, no es necesario construir RITI y RITS de obra, por lo que se utilizarán armarios modulares. Los recintos tendrán una puerta de acceso metálica de dimensiones mínimas 180 x 80 cm, que dispondrá de cerradura con llave común para los distintos usuarios autorizados.

En el RITI se instalarán:

- El registro principal para red de cable de pares/cable de pares trenzados.
- El registro principal para red de cable coaxial.
- El registro principal para red de cable fibra óptica.

En el RITS se instalarán:

- Los equipos de cabecera de TV.
- Espacio reservado para equipo de cabecera de TV satélite.

## Apartado E

**Dimensionamiento y características de la canalización principal**

La **canalización principal** se realizará mediante tubos. Su dimensionamiento irá en función del número de viviendas, oficinas, locales o estancias comunes de la edificación (PAU). El número de canalizaciones dependerá de la configuración de la estructura propia de la edificación. Se realizará mediante tubos de 50 mm de diámetro exterior y de pared interior lisa. El número de cables por tubo será tal que la suma de las superficies de las secciones transversales de todos ellos no superará el 50 % de la superficie de la sección transversal útil del tubo. Su dimensionamiento mínimo será como sigue:

|            |                                          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |
| :--------: | :--------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Nº de PAU  |               Nº de tubos                | Utilización                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|  Hasta 10  |                    5                     | 1 tubo RTV<br>1 tubo cables de pares/ pares trenzados<br>1 tubo cables coaxiales<br>1 tubo cable de fibra óptica<br>1 tubo de reserva                                                                                                                                                                                                                                                                                                                                                      |
| De 11 a 20 |                    6                     | 1 tubo RTV<br>1 tubo cable de pares/ pares trenzados<br>2 tubos cables coaxiales<br>1 tubo cable de fibra óptica<br>1 tubo de reserva                                                                                                                                                                                                                                                                                                                                                      |
| De 21 a 30 |                    7                     | 1 tubo RTV<br>2 tubos cable de pares/ pares trenzados<br>1 tubo cable coaxial<br>1 tubo cable de fibra<br>2 tubos de reserva                                                                                                                                                                                                                                                                                                                                                               |
| Más de 30  | Cálculo específico en el proyecto de ICT | \* Cálculo específico: se realizará en varias verticales, o bien se proyectará en función de las características constructivas del edificio y en coordinación con el proyecto arquitectónico de la obra, garantizando en todo momento la capacidad mínima de:<br><br>1 tubo RTV<br>1 tubo/20 PAU o fracción cable de pares trenzados o 2 tubos cable de pares<br>1 tubo cable coaxial<br>1 tubo cable de fibra óptica<br>1 tubo de reserva por cada 15 PAU  o fracción, con un mínimo de 3 |

**El número de PAUs de la edificación es 15. Por tanto, la canalización principal estará formada por un mínimo de 6 tubos de 50  mm con la siguiente asignación:**

- **1 tubo/s para RTV**
- **1 tubo/s para cables de pares trenzados**
- **2 tubo/s para cable coaxial**
- **1 tubo/s para cable de fibra óptica**
- **1 tubo/s de reserva**


## Apartado F

**Dimensionamiento y características de la canalización secundaria**

La edificación cuenta con 3 viviendas por planta y el número de plantas es 4.

Para el caso de edificaciones con un número de viviendas por planta inferior a seis, se podrá prescindir del registro de paso por lo que las **canalizaciones se establecerán entre los registros secundario y de terminación de red mediante 3 tubos de 25 mm de diámetro**, o canales equivalentes con tres espacios delimitados, con la siguiente utilización:

- Uno para cables de pares o pares trenzados y para los cables de fibra óptica.
- Uno para cables coaxiales de servicios de TBA.
- Uno para cables coaxiales de servicios de RTV.

La siguiente imagen muestra un esquema de la canalización secundaria que conectará el registro secundario de cada planta con cada vivienda.

![[Esquema_canalización_secundaria_planta_PAU_menor_6.png]]

**Por tanto, en cada planta se utilizarán 9 tubos de 25 mm de diámetro que partirán desde el registro secundario a cada uno de las viviendas en grupos de 3 tubos. Al existir 4 plantas con 3 viviendas, en total se utilizarán 36 tubos de 25 mm diámetro.**

## Apartado G

**Dimensionamiento de los registros secundarios. Número de registros secundarios que se colocarán**

La normativa indica que se colocará un registro secundario en los siguientes casos:
- En los puntos de encuentro entre una canalización principal y una secundaria en el caso de edificaciones de viviendas, y en los puntos de segregación hacia las viviendas, en el caso de viviendas unifamiliares. Deberán disponer de espacios delimitados para cada uno de los servicios. Alojarán, al menos, los derivadores de la red de RTV y de la red de cables coaxiales de TBA cuando proceda, así como las regletas o cajas de segregación que constituyen el punto de distribución de cables de pares y de fibra óptica (cuando proceda) y el paso de cables de pares trenzados, coaxiales (cuando proceda) y de fibra óptica (cuando proceda).
- En cada cambio de dirección o bifurcación de la canalización principal.
- En cada tramo de 30 m de canalización principal.
- En los casos de cambio en el tipo de conducción.

**El primero  y el segundo de los casos son los únicos que aplican, debido a las características de la edificación. El edificio cuenta con: planta baja, 3 plantas de viviendas y planta ático. Por tanto, deben colocarse 5 registros secundarios, uno por cada planta. Por otro lado, el RITI se ubica en un punto que requiere un cambio de dirección en la canalización principal para llegar a cada una de las plantas, de forma que es necesario un registro secundario adicional. De esta forma, se colocará un total de 6 registros secundarios.**

En cuanto a las dimensiones, la normativa indica que las dimensiones mínimas serán:
- 450 x 450 x 150 mm:
	- En edificaciones con un número de PAU por planta igual o menor que tres, y hasta un total de 20 en la edificación.
	- En edificaciones con un número de PAU por planta igual o menor que cuatro, y un número de plantas igual o menor que cinco.
	- En edificaciones, en cada cambio de dirección o bifurcación de la canalización principal y en cada tramo de 30 m de canalización principal.
	- En viviendas unifamiliares.
- 500 x 700 x 150 mm (formato horizontal o vertical):
	- En edificaciones con un número de PAU comprendido entre 21 y 30.
	- En edificaciones con un número de PAU  menor o igual a 20 en los que se superen las limitaciones establecidas en el apartado anterior en cuanto a número de viviendas por planta o número de plantas.
- 550 x 1000 x 150 mm (formato horizontal o vertical):
	- En edificaciones con número de PAU mayor de 30.
- Arquetas de 400 x 400 x 400 mm:
	- En edificaciones, en cada cambio de dirección o bifurcación de la canalización principal, cuando la canalización sea subterránea.

**El número de PAUs de la edificación es 15. Por tanto, las dimensiones de los 6 registros secundarios serán 450 x 450 x 150 mm, al tratarse de una edificación con hasta 3 PAUs por planta y un total inferior a 20, así como un único cambio de dirección en la canalización principal, siendo esta canalización no subterránea.**


## Apartado H

**Dimensionamiento del registro de terminación de red**

PENDIENTE

## Apartado I

**Dimensionamiento de la red interior de usuario**

PENDIENTE