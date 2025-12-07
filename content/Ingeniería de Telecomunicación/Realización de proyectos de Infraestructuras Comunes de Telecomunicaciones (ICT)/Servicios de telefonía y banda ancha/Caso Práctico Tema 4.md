---
title: Caso Práctico Tema 4
date: 2025-12-06
---
**Trabajamos en una empresa dedicada, entre otras cosas, a elaborar proyectos de ICT. Sucede que hace años se comenzó a elaborar el proyecto de un edificio y, poco después, se abandonó el trabajo porque el promotor encontró problemas. Hoy, nos comunican que el proyecto se va a reanudar y debemos buscar en el archivo el trabajo que quedó incompleto para terminarlo. Se trata de un proyecto elaborado por un compañero que ya no está en la empresa del que sabemos lo siguiente:**
- **El proyecto se elaboró según la norma antigua (2003).**
- **Se trata de un edificio que consta de bajo, 3 plantas iguales y ático.**
- **En el bajo hay un local comercial y una zona dedicada a trasteros.**
- **En cada planta tipo (1º, 2º y 3º) hay tres viviendas.**
- **En la planta ático también hay tres viviendas (A y B).**
**Disponemos de los planos que dejó nuestro compañero (anexo I). Supondremos que las medidas tomadas sobre los mismos son correctas.**

## Apartado A

**Si vemos los planos de las plantas tipo y ático veremos los símbolos:**

![[Caso_Practico_Tema_4_Simbolos.png]]

**Estudiando la adaptación a la nueva norma, deberemos sustituir el cableado mediante par telefónico a dos hilos por cable UTP:**
- **¿Podremos aprovechar los planos (la ubicación de tomas y el diseño de canalización)? ¿Es suficiente el número de tomas?** Sí — los planos y el esquema de infraestructura son reutilizables: muestran claramente la ubicación de PAU, registros y trazas de canalización (RITI, RITS, RS, arquetas), por lo que las canalizaciones físicas pueden aprovecharse para pasar cable UTP y fibra sin rehacer el trazado estructural. El número de tomas proyectado en el plano antiguo (marca de 4–5 tomas por vivienda según planta) es suficiente para una adaptación básica 1:1 (sustituir TB por RJ-45) y cubrir los servicios mínimos de voz/datos; no obstante, si se desea una instalación más alineada con las recomendaciones actuales (mayor densidad para TV por IP, domótica o varios usuarios simultáneos) habría que añadir tomas adicionales.
- **Queremos saber el número de tomas RJ-45 hembra que serán necesarias en PAU’s y viviendas. Si decidimos utilizar tomas dobles cuando sea necesario (en vez de dos tomas separadas), ¿Cuántas tomas simples y cuántas dobles necesitaremos?** Siguiendo el esquema del proyecto y sustituyendo cada toma TB por 1 puerto RJ-45, el edificio tiene **57 puertos RJ-45** en total (45 en las 9 viviendas de las plantas tipo y 12 en las 3 viviendas del ático). Aplicando el criterio de colocar una **placa doble por vivienda** en la ubicación principal (salón) y el resto como placas simples, obtenemos **12 placas dobles** (aportando 24 puertos) y **33 placas simples** (33 puertos), es decir 45 placas físicas en total para cubrir los 57 puertos.
- **Calcular el número de cables UTP necesarios en la red de distribución. Si para los paneles de salida utilizamos unidades de 24 tomas hembra cada una, ¿Cuántas nos harán falta?** Cada puerto RJ-45 implica un cable horizontal UTP desde el panel/PAU, por tanto hacen falta **57 cables UTP**. Usando paneles de salida de 24 puertos, necesitaremos 3 (57/24=2.375) paneles de 24 (72 puertos disponibles), con **15 puertos de reserva** en los paneles para ampliaciones futuras.
- **Si el cable UTP se compra en bobinas de 100 m que nos permiten cortar y conectorizar según necesidades, obtener una estimación de cuántas nos harán falta en total.** Tomando una longitud media por tendido (panel → toma) de **20 m** y sumando un **10%** de desperdicio para remates y recortes: metros totales ≈ 57 × 20 m = 1.140 m → con 10% = 1.254 m. Dividiendo por bobinas de 100 m se obtiene **≈13 bobinas de 100 m** (redondeo por seguridad). Es recomendable prever 1–3 bobinas adicionales en obra como stock por imprevistos o tendidos extras.

## Apartado B

**Respecto a las tomas de “banda ancha” debemos saber que en la norma antigua sólo se dejaban las canalizaciones esperando que el operador completase la instalación. Casi siempre se utilizaban para instalar cableado coaxial, aunque no es obligatorio. Suponiendo que los operadores locales nos comunican que sólo desean cableado UTP y fibra: **
- **¿Podremos aprovechar para algo los planos (la ubicación de tomas y el diseño de canalización)?** Sí, los planos se pueden aprovechar: muestran la ubicación de PAU, registros y las canalizaciones (arquetas y conducciones) por las que discurren las instalaciones, por lo que la mayor parte del trazado físico y las rutas de paso sirven para pasar tanto UTP como fibra; eso sí, hay que comprobar in situ ocupación y estado de tubos y arquetas y, si están llenos, prever microductos o limpieza, pero no es necesario rehacer el diseño de canalización.
- **¿Qué número de fibras habrá en la red de distribución?** Si el operador pide una fibra dedicada por vivienda, el edificio necesitaría una fibra por cada una de las 12 viviendas; para ser prácticos y dejar margen, suele recomendarse doblar esa cantidad (una de reserva) o dejar capacidad en el backbone para ampliaciones, con lo que un esquema cómodo sería prever unas 24 fibras en los recorridos principales.
- **¿Deberemos cablear en estrella (con fibras individuales) o con cables multifibra?** Lo más sensato en este caso es tender cables multifibra en las trazas principales y derivar con fibras individuales hacia las viviendas.


