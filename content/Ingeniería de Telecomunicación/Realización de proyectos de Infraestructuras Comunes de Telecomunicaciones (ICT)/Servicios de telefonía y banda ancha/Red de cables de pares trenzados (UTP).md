---
title: Red de cables de pares trenzados (UTP)
date: 2025-12-02
---
Esta red puede soportar la telefonía clásica y el ADSL pero su mayor potencial es ser utilizado como el último paso de una red de banda ancha (FTTB).

## Elementos de conexión

Son los utilizados como puntos de unión o terminación de los tramos de red definidos anteriormente.

### Punto de interconexión (Punto de terminación de red)

Realiza la unión entre cada una de las redes de alimentación de los operadores del servicio y las redes de distribución de la ICT de la edificación, y delimita las responsabilidades en cuanto a mantenimiento entre el operador del servicio y la propiedad de la edificación. Se situará en el registro principal, con carácter general, en el interior del recinto de instalaciones de telecomunicación inferior del edificio (RITI), y estará compuesto por:
- Una serie de paneles de conexión o regletas de entrada donde finalizarán las redes de alimentación de los distintos operadores de servicio
- Una serie de paneles de conexión o regletas de salida donde finalizará la red de distribución de la edificación
- Una serie de latiguillos de interconexión que se encargarán de dar continuidad a las redes de alimentación hasta la red de distribución de la edificación en función de los servicios contratados por los distintos usuarios.

![[Punto_interconexion_pares_y_trenz.png]]

#### Regletas o paneles de conexión de entrada

Se reservará espacio suficiente para albergar los pares de las redes de alimentación; en el cálculo del espacio necesario se tendrá en cuenta que el número total de pares (para todos los operadores del servicio) de los paneles o regletas de entrada será como mínimo 1,5 veces el número de pares de los paneles o regletas de salida, salvo en el caso de edificios o conjuntos inmobiliarios con un número de PAU igual o menor que 10, en los que será, como mínimo, dos veces el número de pares de los paneles o regletas de salida.

#### Regletas o panales de conexión de salida para redes de distribución de pares trenzados

El panel de conexión o regleta de salida deberá estar constituido por un panel repartidor dotado con tantos conectores hembra miniatura de ocho vías (RJ45) como acometidas de pares trenzados constituyan la red de distribución de la edificación. La unión con las regletas de entrada se realizará mediante latiguillos de interconexión.

![[Regleta_panel_conexion_hem.png]]

### Punto de distribución

Realiza la unión entre las redes de distribución y de dispersión de la ICT de la edificación. En este caso se hace distribución en estrella (cables UTP directos del RITI al PAU) por lo que en el registro secundario no habrá conexiones. Se deben dejar eso sí en los registros secundarios, cables UTP de reserva que quedarán enrollados en forma de bucle con longitud suficiente para llegar al PAU más alejado de esa planta.

### Punto de acceso al usuario (PAU)

Realiza la unión entre la red de dispersión y la red interior de usuario de la ICT de la edificación. Permite la delimitación de responsabilidades en cuanto a la generación, localización y reparación de averías entre la propiedad de la edificación o la comunidad de propietarios y el usuario final del servicio. Se ubicará en el registro de terminación de red situado en el interior de cada vivienda, local o estancia común.

Cada una de las acometidas de pares trenzados de la red de dispersión terminará en un conector RJ-45 hembra que hará de PAU con “medio de corte y punto de prueba”. La siguiente imagen muestra un conector RJ-45 macho (izquierda) y un conector RJ-45 hembra (derecha).

![[RJ_45_macho_hembra.png]]

### Bases de acceso terminal

Realizan la unión entre la red interior de usuario y cada uno de los terminales. 

Los hilos conductores de cada rama de la red interior se conectarán a los 8 contactos del conector RJ-45 hembra miniatura de 8 vías de la BAT en que terminen.

![[BAT_Pares_Trenzados.png]]

A continuación se muestra un esquema general de un red UTP en el interior de un edificio.

![[Esquema_red_UTP.png]]