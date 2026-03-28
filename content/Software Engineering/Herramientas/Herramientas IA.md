---
title: Herramientas IA
date: 2026-03-15
---
## Resumen

- ¿Qué es un LLM?
- ¿Cómo funcionan los tokens?
- ¿Qué herramientas están cambiando la forma de programar?
- ¿Cómo sacarle el máximo rendimiento a tu editor de código, ya sea VS Code o Cursor?
- ¿Cómo utilizar agentes y Claude Code?
- ¿Qué es un MCP?
- ¿Qué son los agents skills?
- ¿Qué es OpenCode?
- ¿Cómo ejecutar modelos localmente?

## Large Language Models (LLMs)

### Definición

Hoy en día, cuando hablamos de Inteligencia Artificial, normalmente nos referimos a los **Large Language Models (LLMs)**.

Un LLM es una red neuronal (normalmente basada en arquitecturas tipo *Transformer*) con miles de millones de parámetros, entrenada para una tarea aparentemente simple:

> Predecir el siguiente *token* dado un contexto.

Es decir, se puede ver como una función enorme:
- Entrada: texto (prompt + contexto).
- Salida: una distribución de probabilidad sobre el siguiente *token*.

A pesar de lo simple de esta definición, al escalar el modelo y los datos, emergen capacidades complejas:
- Generación de código.
- Razonamiento aproximado.
- Resumen y traducción.
- Interacción conversacional.

**Importante**: Un LLM no “entiende” ni “piensa” como un humano. No tiene conciencia ni intención. Simplemente modela probabilidades sobre secuencias de texto.  
Lo sorprendente es que lo hace tan bien que el resultado **parece** inteligencia.

Ejemplos de LLMs:
- GPT 5.2
- Opus 4.6
- DeepSeek V2
- GLM 5

### Fases de entrenamiento

El entrenamiento de un LLM suele dividirse en tres grandes etapas:

1. **Pre-entrenamiento (*pretraining*)**: Se entrena el modelo con grandes cantidades de datos: internet, libros, Wikipedia, código (GitHub, etc.). El objetivo es  aprender patrones estadísticos del lenguaje, gramática, semántica, estructura de código, etc. Es la fase más costosa (computacionalmente) y la que define el conocimiento base del modelo y sus capacidades generales.
2. ***Fine Tuning* o Ajuste Fino**: El modelo pre-entrenado sabe “mucho”, pero no está optimizado para interactuar. Aquí se entrena con *datasets* más específicos: preguntas-respuestas, instrucciones, conversaciones, etc. El objetivo es mejorar la calidad de las respuestas, así como hacerlas más útiles y coherentes.
3. Alineamiento (*Reinforcement learning from human feedback* (RHLF) y variantes) : Se ajusta el modelo usando: evaluaciones humanas y otros modelos auxiliares ya entrenados para proporcionar esta retroalimentación (AI *feedback*). El objetivo de esta fase es hacer el modelo más útil, seguro y alineado con lo que esperamos, evitar respuestas dañinas o incoherentes y mejorar tono, claridad y comportamiento.

### Tamaño del modelo (número de parámetros)

El número de parámetros (normalmente en el orden de *billions*) representa la cantidad de valores ajustables del modelo.

Una forma intuitiva de verlo:

> Son los “grados de libertad” que tiene el modelo para aprender patrones.

Durante el entrenamiento:
- Estos parámetros se ajustan millones (o billones) de veces.
- El objetivo es mejorar la predicción del siguiente *token*.

Qué implica tener más parámetros:
- Mayor capacidad para aprender patrones complejos
- Mejor rendimiento en tareas generales (en muchos casos)
- Mayor coste computacional (entrenamiento e inferencia)
- Más memoria necesaria (clave para ejecución local)

Por otro lado, es importante tener en cuenta que un modelo más grande no siempre implica que sea un modelo mejor. Hoy en día existen modelos pequeños bien optimizados pueden competir muy bien. Para ello, se utilizan técnicas como: mejor entrenamiento, arquitecturas optimizadas o *distillation*. 

> La destilación (*distillation*) es una técnica de compresión de modelos que consiste en transferir los aprendizajes de un gran modelo preentrenado, el "modelo docente", a un "modelo de estudiante" más pequeño. 

Estas técnicas permiten conseguir modelos más eficientes (mejor relación calidad/coste), algo especialmente importante si se desea ejecutar modelos localmente.

### Ventana de contexto (*context window*)

El contexto tiene un limite. Es algo presente en cualquier modelo. La ventana de contexto define **cuánta información puede manejar el modelo en una sola interacción**. Se mide en *tokens* e incluye:
- El *prompt* que se introduzca en esa interacción
- El historial de conversación
- La respuesta generada

Si mantenemos la analogía de entender un LLM como una función, y suponemos que su entrada fuese un *array*, la ventana de contexto sería el número de posiciones de dicho *array*.

Una manera de entenderlo sería la siguiente:

> Es como la “memoria a corto plazo” del modelo.

Por ejemplo, si un modelo tiene una ventana de 128k tokens, todo lo que exceda ese límite se pierde o se recorta. El modelo **no puede “verlo”**.

La ventana de contexto, lógicamente, cambia según el modelo. Actualmente, ya se han alcanzado ventanas de contexto del orden del millón de *tokens* en los modelos más punteros.

Es importante tener claro que, cuanto mayor sea esta ventana, mejor será el modelo para documentos largos, código, logs, etc. Sin embargo, esto aumenta el coste y puede degradar el rendimiento si no se usa bien.

### Limitaciones de los LLMs

Los modelos tienen limitaciones y entenderlas es clave para poder usarlos correctamente y de manera eficiente:
1. No “piensan”, predicen: Un LLM no razona como un humano ni entiende realmente el mundo. Simplemente genera la continuación (texto) más probable dado un contexto.
2. Alucinaciones (*hallucinations*): El modelo puede inventarse datos o generar respuestas plausibles pero falsas. Esto ocurre porque **está optimizado para “sonar correcto”, no para “ser correcto”**.
3. Dependencia total del contexto: La calidad de la salida depende directamente de la entrada (*Garbage in → garbage out*). Un mal *prompt* supone una mala respuesta, ya que la falta de contexto da lugar a respuestas incompletas o erróneas
4. Razonamiento limitado: Aunque pueden parecer muy buenos razonando, no existe un razonamiento “real”, sino que es un patrón aprendido. Los modelos fallan en problemas complejos nuevos, lógica estricta y no tienen consistencia a largo plazo.


Minuto 11:21.

## Referencias

- [Curso IA para programadores (2026 MiduDev)](https://www.youtube.com/watch?v=2aN_-m1uU4k&pp=ygUXaGVycmFtaWVudGFzIGlhIG1pZHVkZXY%3D)
- [How LLMs Actually Generate Text (Every Dev Should Know This)](https://youtu.be/NKnZYvZA7w4?si=FmSS6Kj0lkUujC0y)
- [Todo lo que necesitas saber sobre el desarrollo con IA (2026 BettaTech)](https://www.youtube.com/watch?v=MgtM_Ktuc5A)
- https://youtu.be/XSFxZ5cf5xo?si=tTEHF8j1paMoQiWV
- https://youtu.be/Ywgn96xVjqc?si=fA5gRm45ZmYLD3U7
- https://youtu.be/Hk0jHDzkE2U?si=30NHVeHjaJ90hkOS