---
title: Red coaxial
date: 2025-11-28
---
Antes de nada, creemos conveniente profundizar en un aspecto que ya se comentó en la introducción sobre la red de coaxial: la red de distribución y dispersión deben estar duplicadas. La razón para tal disposición legal hay que buscarla en las capacidades técnicas del cable coaxial y en el uso que se le pretende dar. El cable coaxial permitirá “alojar” TODAS las señales terrenas (radio FM, radio digital DAB y televisión digital TDT) pero sólo un operador de televisión satélite. Las señales terrenas son en su mayoría de libre acceso, pero aunque alguna esté codificada (como GOL-TV actualmente), deben llegar todas íntegramente a TODOS los usuarios del inmueble. La norma se redactó en un momento en que existían dos operadores de satélite activos en España (Canal Satélite Digital y Vía Digital). Entonces se planteó la doble distribución como solución que permitía convivir a ambos: a cada vivienda deberían llegar dos coaxiales, ambos deberían contener todas las señales terrenas, cada uno de ellos podría contener una plataforma digital por satélite diferente. Nótese que el servicio de satélite es opcional. Sin embargo, la doble distribución se hizo obligatoria desde el principio; ya que así se garantiza una instalación fácil y rápida en el momento que algún vecino se abone a alguna de las plataformas.

La doble distribución debe complementarse con la instalación de los dispositivos adecuados (PAU’s) a la entrada de las viviendas. Estos PAU’s deben permitir seleccionar cuál de los dos coaxiales de entrada es el activo, según a qué plataforma está abonado ese usuario.

Actualmente, sólo existe un operador de TV satélite: Digital+. Sin embargo, en la redacción de la norma de 2011 se decidió mantener la doble distribución porque el gasto extra en obra es muy bajo y una ampliación posterior sí que sería muy costosa.

Vamos a continuar definiendo, los elementos que nos vamos a encontrar en esta parte de la instalación:

## Cable coaxial

El cable coaxial: está formado por dos conductores, un hilo interno (vivo) y un blindaje externo (muchas veces llamado malla porque en los cables comunes está formado por una malla de hilos de cobre, en cables de calidad puede ser una lámina de papel metálico o incluso un tubo sólido). Desde un punto de vista eléctrico es una línea de transmisión. Es capaz de transportar señales entre 0 Hz y 2GHz aproximadamente. La parte cercana a la continua (frecuencia cero) no suele utilizarse por su inestabilidad. En redes HFC (banda ancha por cable, no aplicable aquí) se utiliza la banda entre 5 y 65 MHz como canal de retorno. En instalaciones de RTV la banda de interés empieza en los 80 MHz (radio FM), comprende todas las frecuencias de TDT (400-790 MHz [^1]) y también entre 1 y 2 GHz (banda intermedia de satélite, esto es: la frecuencia a la que obtenemos la señal de satélite en la salida de una antena parabólica [^2]).

![[Cable_coaxial_detalle.png]]

[^1]: El rango de frecuencias de TDT fue durante mucho tiempo 470-862 MHz. En el año 2015 se liberó el espacio entre 790 y 862 (primer dividendo digital para permitir su aprovechamiento como frecuencias de telefonía móvil 4G). Con fecha límite 30 de junio de 2020, se liberaron las bandas de frecuencias entre 694 y 790 MHz(segundo dividendo digital para permitir su aprovechamiento para frecuencias de telefonía móvil 5G).
[^2]: Las antenas parabólicas disponen de un conversor situado en el foco de la parábola que traslada la señal desde la frecuencia de bajada (10.70 a 11.70GHz en banda baja u 11.70 a 12.75 GHz en banda alta) a la llamada: “frecuencia intermedia de satélite”, entre 1 y 2 GHz. La atenuación en el cable a frecuencias mayores es intolerable.
