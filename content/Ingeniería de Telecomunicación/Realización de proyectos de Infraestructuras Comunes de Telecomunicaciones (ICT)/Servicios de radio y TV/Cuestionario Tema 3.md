---
title: Cuestionario Tema 3
date: 2025-11-29
---
## Cuestión 1

Al diseñar el cableado de una planta…

Selecciona una:
- La unión entre RS y RTR puede discurrir, en parte, por dentro de las viviendas.
- Las tomas de una vivienda se pueden cablear en serie, siempre que no haya más de 3 seguidas.
- A cada toma llegan dos coaxiales porque el cableado está duplicado.
- Ninguna de las anteriores es correcta.
### Respuesta

Ninguna de las anteriores es correcta.

### Justificación

Vamos a analizar cada opción con cuidado:

1. **“La unión entre RS y RTR puede discurrir, en parte, por dentro de las viviendas.”** Esto **no es correcto**, ya que el cableado principal (entre el RS —repartidor secundario— y el RTR —repartidor de torre—) debe ir por zonas comunes y no atravesar viviendas, por seguridad y normativas.
2. **“Las tomas de una vivienda se pueden cablear en serie, siempre que no haya más de 3 seguidas.”** Esto **tampoco es correcto**, porque el cableado moderno de televisión o datos (coaxial o par trenzado) suele hacerse en **topología estrella**, no en serie, para asegurar la calidad de señal.
3. **“A cada toma llegan dos coaxiales porque el cableado está duplicado.”** Esto **es incorrecto** como norma general. Normalmente cada toma recibe un solo cable coaxial desde el repartidor de la vivienda. El cable duplicado no es habitual.

## Cuestión 2

El cableado de enlace de una instalación de RTV…

Seleccione una:
- Une la arqueta de entrada con el RITI.
- No es necesario que vaya entubado según la norma actual.
- Debe ir entubado y, por eso, no es necesario utilizar cable con cubierta de intemperie.
- Ninguna de las anteriores es correcta.

### Respuesta

Ninguna de las anteriores es correcta.

### Justificación

Vamos a analizar cada opción con cuidado:
1. **“Une la arqueta de entrada con el RITI.”** Incorrecta, porque no siempre se usa arqueta; depende de la captación (tejado o entrada subterránea).    
2. **“No es necesario que vaya entubado según la norma actual.”** Incorrecta, el cableado **sí debe ir protegido**, normalmente en tubo.
3. **“Debe ir entubado y, por eso, no es necesario utilizar cable con cubierta de intemperie.”** Parcialmente, como dije antes, **el cable debe ser adecuado a la situación**, incluso si va entubado, puede requerirse cubierta para exterior.

## Cuestión 3

En una cabecera de diseño modular…

Seleccione una:
- Cada módulo es llamado monocanal porque SIEMPRE amplifica un único canal.
- Hay que utilizar, aparte, una centralita amplificadora para poder amplificar las señales de FM y de satélite.
- Podremos tener módulos para amplificar FM, DAB, satélite (FI), un solo canal de TDT (monocanal) y varios canales de TDT (multicanal).
- Ninguna de las anteriores es correcta.

### Respuesta

Podremos tener módulos para amplificar FM, DAB, satélite (FI), un solo canal de TDT (monocanal) y varios canales de TDT (multicanal).

### Justificación

Este es **el principio del diseño modular**: se pueden combinar distintos módulos según las señales que se quieran amplificar y distribuir.

## Cuestión 4

En una vivienda con salón, cocina, dos habitaciones y dos baños, ¿Cuántas tomas de televisión, como mínimo, deberán ser instaladas en obra?

Seleccione una:
- 6.
- 4.
- 3.
- 2.

### Respuesta

4.

### Justificación

La norma vigente pide, como mínimo, una toma por estancia computable (excluidos baños y trasteros, pero se incluye la cocina si es una estancia separada).

## Cuestión 5

En una vivienda que consta de salón, cocina, 3 habitaciones y 2 baños, ¿cuántas salidas habrá de tener el PAU de RTV?

Seleccione una:
- 2.
- 3.
- 5.
- 7.

### Respuesta

5.

### Justificación

Según la **normativa ICT 3.0** sobre instalaciones de RTV en viviendas:
- Cada **estancia habitable** que deba disponer de toma de televisión requiere **una salida en el PAU** (Punto de Acceso de Usuario).
- Habitaciones consideradas: salón, cocina (si está aislada), dormitorios. Los baños **no requieren toma de TV**.

En este caso:
- Salón → 1 salida.    
- Cocina (aislada) → 1 salida.    
- Dormitorio 1 → 1 salida.    
- Dormitorio 2 → 1 salida.    
- Dormitorio 3 → 1 salida.

## Cuestión 6

En viviendas unifamiliares se suele utilizar un amplificador de banda ancha que amplifica todos los canales de televisión a recibir (de hecho, amplifica toda la banda de televisión terrestre). Una ventaja será...

Seleccione una:
- La posible intermodulación entre las frecuencias de los diferentes canales ya que reforzará algunos de ellos.
- Que si aparecen/desparecen canales NO habría que modificar la instalación.
- Los armónicos generados, que nos permiten recibir un canal en diferentes frecuencias.
- Ninguna de las anteriores.

### Respuesta

Que si aparecen/desparecen canales NO habría que modificar la instalación.

### Justificación

Al amplificar **toda la banda de televisión terrestre**, cualquier cambio en los canales no requiere cambiar el amplificador ni la instalación.

## Cuestión 7

Estamos en A Veiga (Ourense), donde las coordenadas geodésicas son: 42ºN, 7ºW. Queremos apuntar con una antena parabólica al satélite Hotbird6, del que sabemos que es geoestacionario y cuya longitud es 13ºE. La antena deberá apuntar:

Seleccione una:
- al noreste.
- al noroeste.
- al sureste.
- al suroeste.

### Respuesta

Al sureste.

### Justificación

Las coordenadas geodésicas son 42° N, 7° W. El convenio habitual es que la latitud norte es positiva y la sur negativa (en este caso λ<sub>rec</sub> = 42°, λ<sub>sat</sub> = 0 como siempre por ser geoestacionario). En cuanto a longitudes, cuando son hacia el este son positivas (φ<sub>rec</sub> = -7°, φ<sub>sat</sub> = 13°).

Empezaremos por calcular el ángulo **azimut** (el giro sobre el plano horizontal, necesario para apuntar a ese satélite). El primer paso es calcular la longitud relativa del satélite respecto de la estación terrena (receptora en este caso): φ =φ<sub>sat</sub> - φ<sub>rec</sub> = 13º - (-7º) = 20°. Ahora podemos aplicar la fórmula del azimut (l es la latitud de la estación, la del satélite es 0° por ser geoestacionario):

$$
tg(A_{x}) = \frac{tg(\phi)}{sen(\lambda_{rec})} = \frac{tg(20º)}{sen(42º)}
$$

Lo que resulta en un Azimut de 28.5°. La fórmula produce ángulos REFERIDOS AL SUR donde además el sentido horario corresponde con ángulos negativos. El azimut muchas veces se da referido al norte. En este caso, sería de 180º - 28.5º = 151.5º. Esto se corresponde con dirección sureste.

Otra forma de razonar sería:
1. **Posición de la antena:**    
    - Estamos en **A Veiga (42º N, 7º W)**: al **noroeste de Europa**.
2. **Posición del satélite:**
    - Hotbird6 está en **13º E**: **al este del meridiano de Greenwich**.
3. **Dirección relativa:**
    - Desde 7º Oeste hasta 13º Este: debemos mirar **hacia el este**.
    - En cuanto al norte-sur, estamos a 42º N, y el satélite está sobre el **ecuador (0º latitud)**. Para apuntar hacia el satélite geostacionario, la elevación será **hacia el sur** (ya que los satélites geoestacionarios están sobre el ecuador).

Combinando esto: **sur + este → sureste**

## Cuestión 8

Estamos en Melbourne (Australia), donde las coordenadas geodésicas son, Longitud: 151º E, Latitud: 34º S. Queremos apuntar al satélite “INTELSAT-8” (geoestacionario, Longitud: 166º E). La parabólica deberá apuntar hacia….

Seleccione una:
- el noroeste.
- el noreste.
- el suroeste.
- el sureste.

### Respuesta

El noreste.

### Justificación

Las coordenadas geodésicas son 34° S, 151° E. El convenio habitual es que la latitud norte es positiva y la sur negativa (en este caso λ<sub>rec</sub> = -34°, λ<sub>sat</sub> = 0 como siempre por ser geoestacionario). En cuanto a longitudes, cuando son hacia el este son positivas (φ<sub>rec</sub> = 151°, φ<sub>sat</sub> = 166°).

Empezaremos por calcular el ángulo **azimut** (el giro sobre el plano horizontal, necesario para apuntar a ese satélite). El primer paso es calcular la longitud relativa del satélite respecto de la estación terrena (receptora en este caso): φ =φ<sub>sat</sub> - φ<sub>rec</sub> = 166º - 151º = 15°. Ahora podemos aplicar la fórmula del azimut (l es la latitud de la estación, la del satélite es 0° por ser geoestacionario):

$$
tg(A_{x}) = \frac{tg(\phi)}{sen(\lambda_{rec})} = \frac{tg(15º)}{sen(-34º)}
$$

Lo que resulta en un Azimut de 154.4° (da -25.6º también, pero como estamos en el hemisferio sur, debemos apuntar hacia el norte, por lo que tenemos que coger el otro ángulo). La fórmula produce ángulos REFERIDOS AL SUR donde además el sentido horario corresponde con ángulos negativos. El azimut muchas veces se da referido al norte. En este caso, sería de 180º - 154.4º = 25.6º. Esto se corresponde con dirección noreste.

Otra forma de razonar sería:
1. **Posición de la antena:**    
	- Melbourne: 34º S, 151º E → **hemisferio sur, este de Greenwich**.
2. **Posición del satélite:**
    - INTELSAT-8: 166º E → **al este de Melbourne**, y sobre el ecuador (latitud 0º).
3. **Dirección relativa:**
    - Longitud: 166º E > 151º E → mirar hacia **este**.
    - Latitud: satélite sobre el ecuador → desde 34º S, debemos apuntar **hacia el norte** para alcanzar el ecuador..

Combinando esto: **norte + este → noreste**

## Cuestión 9

Estamos en Santiago de Chile, donde las coordenadas geodésicas son: latitud 33º S y longitud 70º W. Queremos apuntar al satélite Hispasat del que sabemos que es geoestacionario y su longitud es de 31º W. La parabólica deberá apuntar hacia….

Seleccione una:
- el noroeste.
- el noreste.
- el suroeste.
- el sureste.

### Respuesta

El noreste.

### Justificación

Las coordenadas geodésicas son 33° S, 70° W. El convenio habitual es que la latitud norte es positiva y la sur negativa (en este caso λ<sub>rec</sub> = -33°, λ<sub>sat</sub> = 0 como siempre por ser geoestacionario). En cuanto a longitudes, cuando son hacia el este son positivas (φ<sub>rec</sub> = -70°, φ<sub>sat</sub> = -31°).

Empezaremos por calcular el ángulo **azimut** (el giro sobre el plano horizontal, necesario para apuntar a ese satélite). El primer paso es calcular la longitud relativa del satélite respecto de la estación terrena (receptora en este caso): φ =φ<sub>sat</sub> - φ<sub>rec</sub> = -31º - (-70º) = 39°. Ahora podemos aplicar la fórmula del azimut (l es la latitud de la estación, la del satélite es 0° por ser geoestacionario):

$$
tg(A_{x}) = \frac{tg(\phi)}{sen(\lambda_{rec})} = \frac{tg(39º)}{sen(-33º)}
$$

Lo que resulta en un Azimut de 123.3° (da -56.7º también, pero como estamos en el hemisferio sur, debemos apuntar hacia el norte, por lo que tenemos que coger el otro ángulo). La fórmula produce ángulos REFERIDOS AL SUR donde además el sentido horario corresponde con ángulos negativos. El azimut muchas veces se da referido al norte. En este caso, sería de 180º - 123.3º = 56.7º. Esto se corresponde con dirección noreste.

Otra forma de razonar sería:
1. **Posición de la antena:**    
	- Santiago de Chile: **33º S, 70º W** → hemisferio sur y oeste.
2. **Posición del satélite:**
    - Hispasat: **31º W**, sobre el **ecuador (0º de latitud)** → geoestacionario.
3. **Dirección relativa:**
    - Longitud: 31º W > 70º W → satélite está **al este** de Santiago.
    - Latitud: satélite sobre el ecuador → desde 33º S debemos apuntar **hacia el norte** para alcanzar el ecuador.

Combinando esto: **norte + este → noreste**

## Cuestión 10

Las antenas de recepción de radio FM…

Seleccione una:
- Son omnidireccionales y, por eso, no es necesario apuntarlas al emisor más cercano.
- Son directivas y, por eso, no es necesario apuntarlas al emisor más cercano.
- Son omnidireccionales y, por eso, es necesario apuntarlas al emisor más cercano.
- Son directivas y, por eso, es necesario apuntarlas al emisor más cercano.

### Respuesta

Son omnidireccionales y, por eso, no es necesario apuntarlas al emisor más cercano.

### Justificación

Son antenas omnidireccionales y no es necesario apuntarlas.

## Cuestión 11

Las antenas de recepción de TDT…

Seleccione una:
- Son omnidireccionales y, por eso, no es necesario apuntarlas al emisor más cercano.
- Son directivas y, por eso, no es necesario apuntarlas al emisor más cercano.
- Son omnidireccionales y, por eso, es necesario apuntarlas al emisor más cercano.
- Son directivas y, por eso, es necesario apuntarlas al emisor más cercano.

### Respuesta

Son directivas y, por eso, es necesario apuntarlas al emisor más cercano.

### Justificación

Se trata de antenas directivas, que deberemos apuntar hacia el centro emisor más cercano.

## Cuestión 12

Para amplificar conjuntamente varios canales de TDT…

Seleccione una:
- Deben ser consecutivos… sin canales vacíos intermedios.
- Puede haber, como mucho, un canal intermedio vacío.
- Nunca se puede hacer amplificación multicanal en TDT.
- Ninguna de las anteriores es correcta.

### Respuesta

Deben ser consecutivos… sin canales vacíos intermedios.

### Justificación

NO debemos amplificar donde no hay señal porque generaríamos mucho ruido.

## Cuestión 13

Para el servicio de RTV terrena y satélite de una ICT en un edificio de nueva construcción, la norma indica que:

Seleccione una:
- Han de instalarse obligatoriamente los elementos de captación de señales (antenas) tanto para las señales terrenas como provenientes de satélite.
- Sólo hay que dejar la canalización para el servicio. Todos los demás elementos serán instalados a posteriori por la propiedad del inmueble.
- Las redes de distribución, dispersión e interior de usuario estarán compuestas por dos cables (red duplicada), para permitir la recepción de dos posibles plataformas de satélite.
- La distribución de tomas en el interior de las viviendas será en serie, permitiendo que varias tomas vayan sobre el mismo cable.

### Respuesta

Las redes de distribución, dispersión e interior de usuario estarán compuestas por dos cables (red duplicada), para permitir la recepción de dos posibles plataformas de satélite.

### Justificación

La red coaxial se suele dividir en varias partes (seguimos la nomenclatura de la norma de ICT’s):

- **Red de distribución**: tronco principal del árbol, baja en vertical desde la cabecera (a veces, puede ser horizontal, ejemplo: urbanizaciones de chalets). Por normativa constará de dos cables coaxiales (red duplicada). Más adelante se comentará el sentido de esta disposición.
- **Red de dispersión**: son las “ramas principales” que parten del tronco para llevar la señal a cada usuario. En ICT’s los usuarios son viviendas o locales. Esta parte de la red también estará duplicada, llegando a cada usuario dos coaxiales de entrada.
- **Red de usuario**: en cada unidad se distribuye la señal, obligatoriamente en estrella. En el reglamento de ICT’s se habla de “cableado interior de la vivienda”. Es muy importante la función del PAU (punto de acceso al usuario) que une la red de dispersión con la de usuario.

## Cuestión 14

Un repartidor…

Seleccione una:
- “Reparte” señal a las viviendas de una misma planta y permite continuar hacia las siguientes plantas.
- Tiene siempre un número par de salidas.
- Amplifica la señal de TDT.
- Ninguna de las anteriores es correcta.

### Respuesta

- Ninguna de las anteriores es correcta.
### Justificación

Analicemos cada opción:
1. **“Reparte” señal a las viviendas de una misma planta y permite continuar hacia las siguientes plantas.** El repartidor no permite continuar la señal a las siguientes plantas. Esa es la función del derivador.
2. **“Tiene siempre un número par de salidas.”** El número de salidas depende del diseño; no es obligatorio que sea par.
3. **“Amplifica la señal de TDT.”** El repartidor **distribuye** la señal, pero no la amplifica.

## Cuestión 15

¿Cuál de estas, NO es una función del PAU del servicio de RTV?

Seleccione una:
- Seleccionar una entre las dos señales de la doble bajante.
- Separar el cableado comunitario del privado.
- Repartir señal para todas las tomas.
- Permitir que la señal continúe su camino hacia la planta inferior.

### Respuesta

Permitir que la señal continúe su camino hacia la planta inferior.

### Justificación

El PAU es un repartidor. La señal no continúa hacia la planta inferior. Esa es la función del derivador.