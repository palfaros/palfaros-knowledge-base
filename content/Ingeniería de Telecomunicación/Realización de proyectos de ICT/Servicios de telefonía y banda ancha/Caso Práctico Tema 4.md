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
- **¿Podremos aprovechar los planos (la ubicación de tomas y el diseño de canalización)? ¿Es suficiente el número de tomas?** El total de PAUs del edificio es 3·3 (Viviendas Plantas) + 3 (Viviendas Ático) + 1 (Local comercial) = 13 PAUs. Si asumimos 2 PAUs adicionales para las estancias comunes, el total de PAUs del edificio es 15. En una red de pares telefónicos, el Reglamento indica 3 líneas por local, 2 por cada estancia común y 2 por vivienda. En el caso de una red de cable UTP, el Reglamento requiere 1 acometida por local, 2 por cada estancia común y 1 por vivienda. El factor de ocupación utilizado en ambos casos es el mismo: 1.2. Por tanto, el diseño de la canalización ya existente para la red de pares se puede reutilizar perfectamente para la red UTP. La red interior de usuario de la red de pares telefónicos debería utilizar ya cable trenzado. En cuanto a las tomas, se requieren 2 BATs por local, 1 BAT por estancia común y 1 BAT por cada estancia de la vivienda (en 2 de las estancias se pondrán 2 BATs o un BAT doble). En los planos se puede comprobar que existen BATs en cada una de las estancias de cada una de las viviendas. Faltaría el BAT del local comercial.
- **Queremos saber el número de tomas RJ-45 hembra que serán necesarias en PAU’s y viviendas. Si decidimos utilizar tomas dobles cuando sea necesario (en vez de dos tomas separadas), ¿Cuántas tomas simples y cuántas dobles necesitaremos?** De acuerdo a los planos, en cada planta tipo tenemos 1 vivienda con 4 estancias y 2 viviendas con 5 estancias, mientras que en el ático tenemos 1 vivienda con 3 estancias y 2 viviendas con 4 estancias. Por tanto, en cada planta tipo tendremos 1 vivienda con 2 BATs dobles y 2 BATs simples y 2 viviendas con 2 BATs dobles y 3 BATs simples, mientras que en el ático tendremos 1 vivienda con 2 BATs dobles y 1 BAT simple y 2 viviendas con 2 BATs dobles y 2 BATs simples. En total, tendremos 3·(2+3+3)+(1+2+2)=29 BATs o tomas simples y 3·(2+2+2)+1·(2+2+2)=24 BATs o tomas dobles.
- **Calcular el número de cables UTP necesarios en la red de distribución. Si para los paneles de salida utilizamos unidades de 24 tomas hembra cada una, ¿Cuántas nos harán falta?** El número de cables UTP necesarios para la red de distribución será igual al número de acometidas necesarias. El Reglamento requiere 1 acometida por local, 2 por cada estancia común y 1 por vivienda. Por tanto, si asumimos 12 viviendas, 1 local y 2 estancias comunes y aplicamos un factor de ocupación de 1.2, el total de acometidas será 15 para viviendas, 2 para el local comercial y 3 para estancias comunes, es decir, 20 acometidas. Si los paneles de salida tienen 24 tomas hembra cada una, bastará con 1 único panel de 24 tomas hembra en el RITI.
- **Si el cable UTP se compra en bobinas de 100 m que nos permiten cortar y conectorizar según necesidades, obtener una estimación de cuántas nos harán falta en total.** Tomando una longitud media por tendido (panel → toma) de **20 m** y sumando un **10%** de desperdicio para remates y recortes: metros totales ≈ 57 × 20 m = 1.140 m → con 10% = 1.254 m. Dividiendo por bobinas de 100 m se obtiene **≈13 bobinas de 100 m** (redondeo por seguridad). Es recomendable prever 1–3 bobinas adicionales en obra como stock por imprevistos o tendidos extras.

## Apartado B

**Respecto a las tomas de “banda ancha” debemos saber que en la norma antigua sólo se dejaban las canalizaciones esperando que el operador completase la instalación. Casi siempre se utilizaban para instalar cableado coaxial, aunque no es obligatorio. Suponiendo que los operadores locales nos comunican que sólo desean cableado UTP y fibra: **
- **¿Podremos aprovechar para algo los planos (la ubicación de tomas y el diseño de canalización)?** Sí, los planos se pueden aprovechar: muestran la ubicación de PAU, registros y las canalizaciones (arquetas y conducciones) por las que discurren las instalaciones, por lo que la mayor parte del trazado físico y las rutas de paso sirven para pasar tanto UTP como fibra; eso sí, hay que comprobar in situ ocupación y estado de tubos y arquetas y, si están llenos, prever microductos o limpieza, pero no es necesario rehacer el diseño de canalización.
- **¿Qué número de fibras habrá en la red de distribución?** Si el operador pide una fibra dedicada por vivienda, el edificio necesitaría una fibra por cada una de las 12 viviendas; para ser prácticos y dejar margen, suele recomendarse doblar esa cantidad (una de reserva) o dejar capacidad en el backbone para ampliaciones, con lo que un esquema cómodo sería prever unas 24 fibras en los recorridos principales.
- **¿Deberemos cablear en estrella (con fibras individuales) o con cables multifibra?** Lo más sensato en este caso es tender cables multifibra en las trazas principales y derivar con fibras individuales hacia las viviendas.


