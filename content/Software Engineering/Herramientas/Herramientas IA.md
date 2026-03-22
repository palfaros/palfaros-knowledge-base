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

Hoy en día, cuando hablamos de Inteligencia Artificial, normalmente nos referimos a los **Large Language Models (LLMs)**.

Un LLM es una red neuronal (normalmente basada en arquitecturas tipo *Transformer*) con miles de millones de parámetros, entrenada para una tarea aparentemente simple:

> Predecir el siguiente _token_ dado un contexto.

Es decir, se puede ver como una función enorme:
- Entrada: texto (prompt + contexto).
- Salida: una distribución de probabilidad sobre el siguiente *token*.

A pesar de lo simple de esta definición, al escalar el modelo y los datos, emergen capacidades complejas:
- generación de código.
- razonamiento aproximado.
- resumen y traducción.
- interacción conversacional.

**Importante**: Un LLM no “entiende” ni “piensa” como un humano. No tiene conciencia ni intención. Simplemente modela probabilidades sobre secuencias de texto.  
Lo sorprendente es que lo hace tan bien que el resultado **parece** inteligencia.

Ejemplos de LLMs:
- GPT 5.2
- Opus 4.6
- DeepSeek V2
- GLM 5

Los modelos (LLMs) se entrenan en 3 fases:
1. Pre-entrenamiento: Alimentar al modelo con cantidades masivas de información (textos de internet, libros, Wikipedia, GitHub, etc.). Lo que hace aquí el modelo es aprender patrones estadísticos (gramática, razonamiento, código, etc.) a partir de predecir la siguiente palabra millones de veces. Esta es la fase más cara, donde se queman las GPUs. Esta fase es la más importante, porque es la que va a limitar el conocimiento del modelo.
2. *Fine Tuning* o Ajuste Fino: Una vez tienes el modelo pre-entrenado, sabe mucho sobre el lenguaje, pero no sabe mantener una conversación fácilmente. Aquí se le entrena para que tenga conversaciones mejor estructuradas, pregunta-respuestas, etc. En resumen, mejora la estructura.
3. *Reinforcement learning from human feedback* (RHLF): Aprendizaje reforzado con *feedback* humano. No solo hay humanos, también se utilizan otros modelos que ya han sido entrenados previamente para realizar esta retroalimentación. Esto hace que el modelo sea educado, que evite contenido dañino, que tenga las respuestas más útiles, etc. En resumen, mejora la utilidad.

Minuto 7:35.

## Referencias

- [Curso IA para programadores (2026 MiduDev)](https://www.youtube.com/watch?v=2aN_-m1uU4k&pp=ygUXaGVycmFtaWVudGFzIGlhIG1pZHVkZXY%3D)
- [How LLMs Actually Generate Text (Every Dev Should Know This)](https://youtu.be/NKnZYvZA7w4?si=FmSS6Kj0lkUujC0y)
- https://youtu.be/XSFxZ5cf5xo?si=tTEHF8j1paMoQiWV
- https://youtu.be/Ywgn96xVjqc?si=fA5gRm45ZmYLD3U7
- https://youtu.be/Hk0jHDzkE2U?si=30NHVeHjaJ90hkOS