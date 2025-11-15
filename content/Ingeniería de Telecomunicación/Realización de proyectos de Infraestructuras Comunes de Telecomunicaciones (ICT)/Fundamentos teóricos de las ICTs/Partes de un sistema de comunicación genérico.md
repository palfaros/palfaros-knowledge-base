---
title: Partes de un sistema de comunicación genérico
date: 2025-11-12
---
Partimos de un esquema muy general que podría valer para casi cualquier sistema de telecomunicación:

![[Sistema_comunicación_genérico.png]]

Las partes de dicho sistema son:
- Emisor: Formado por:
	- Fuente
	- Transductor (sensor)
	- Procesador (codificador de fuente)
	- Codificador de línea (o de canal)
- Medio (Canal)
- Receptor: Formado por:
	- Decodificador de línea (o de canal)
	- Decodificador (de fuente)
	- Transductor (actuador)
	- Presentación

Vamos ahora a detallar un poco las partes de un sistema de comunicación genérico:
- **Fuente:** fuente de información a transmitir (usuario humano, máquina programada…).
- **Transductor** (sensor): los transductores sirven para convertir señales entre los mundos “físico” y “eléctrico”. En este caso es un sensor que convierte una señal de información física (sonido, imagen...) en otra eléctrica. A veces, puede no ser necesario porque la señal original puede ser ya eléctrica (datos de ordenador). Ejemplos de sensores: micrófono, cámara, sistemas domóticos, alarmas…
- **Codificador de Fuente:** transforma la información a un formato adecuado, entendible para el receptor y eficiente para su transmisión. Ejemplo: codificación de audio MP3, codificación de imagen JPEG, vídeo MPEG… Todos ellos son formatos estandarizados, entendibles por casi todos los sistemas de representación y eficientes (uso óptimo de los recursos de almacenamiento y transmisión).
- **Codificador de Canal:** prepara la información para ser enviada por el canal. La codificación de canal también la podemos llamar modulación. Convertir un flujo de bits en una señal analógica es una “modulación digital” (ejemplo: los antiguos módems telefónicos realizaban modulaciones digitales, la palabra módem viene de modulador/demodulador). Transformar una señal analógica para una mejor transmisión es una “modulación analógica” (ejemplo: modulaciones de radio AM, FM…).
	Las modulaciones usadas en RTV con sus características principales son:
- **Canal:** el canal es el medio de transmisión. Idealmente desearíamos que sólo introdujera retardo y atenuación pero siempre va a introducir otros problemas: señales aleatorias débiles sumadas a la principal (ruido), señales de otros sistemas sumadas (interferencias) y/o deformaciones de la señal principal (distorsión). Existen muchos canales, clasificándolos de forma simple hablaríamos de canal radio (basado en antenas, podemos distinguir el terreno y el de satélite) y canal cable (donde hay muchos tipos: fibra óptica, coaxial, pares trenzados…). Esos dos tipos son los más importantes para las ICT’s (y los dos más importantes en general) pero podemos oír hablar de otros tipos, por ejemplo, el canal magnético (considerando la grabación magnética como un proceso de comunicación con alto retardo).
- **Decodificador de Canal** o demodulador: Su trabajo será invertir la modulación, esto es: recuperar la señal que entró al modulador con el mínimo error posible. Nótese que la modulación es una operación matemática invertible que hace que las perturbaciones del canal afecten lo menos posible a la señal deseada. Nótese también que para cada tipo de canal podemos necesitar modulaciones diferentes aunque la señal a transmitir sea la misma (ejemplo clásico es la televisión digital que utiliza modulaciones diferentes si se transmite por cable, desde antena terrena o desde satélite). Es importante saber que es aquí donde la señal recibida deberá cumplir ciertos requisitos. Esto es: el demodulador no funcionará sin un nivel (potencia) mínimo de señal y sin un mínimo de calidad (nivel mínimo de la señal por encima del ruido). Al cociente entre la potencia de señal y la potencia de ruido le llamamos relación portadora/ruido (antes de demodular) y relación señal a ruido (después de demodular). Es importante que la señal que llegue a una toma (donde se va a enchufar un receptor o demodulador) cumpla con la relación portadora/ruido mínima. A veces también se habla de relación portadora/interferente.
- **Decodificador de Fuente:** lee el formato producido por el codificador de fuente recuperando la señal original (audio, imagen…).
- **Transductor** (actuador): el actuador es el transductor opuesto al sensor. A partir de la señal eléctrica (o de un flujo de bits) debe generar una señal física: sonido audible, imagen visible… Ejemplos: altavoz, monitor…
- **Presentación:** nos referimos al usuario final que recibe la información y la utiliza.