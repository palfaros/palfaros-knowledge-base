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

1. **Pre-entrenamiento (*pretraining*)**: Se entrena el modelo con grandes cantidades de datos: internet, libros, Wikipedia, código (GitHub, etc.). El objetivo es  aprender patrones estadísticos del lenguaje, gramática, semántica, estructura de código, etc. Es la fase más costosa (computacionalmente) y la que define: el conocimiento base del modelo y sus capacidades generales.
2. ***Fine Tuning* o Ajuste Fino**: El modelo pre-entrenado sabe “mucho”, pero no está optimizado para interactuar. Aquí se entrena con *datasets* más específicos: preguntas-respuestas, instrucciones, conversaciones, etc. El objetivo es mejorar la calidad de las respuestas, así como hacerlas más útiles y coherentes.
3. Alineamiento (*Reinforcement learning from human feedback* (RHLF) y variantes) : Se ajusta el modelo usando: evaluaciones humanas y otros modelos auxiliares ya entrenados para proporcionar esta retroalimentación (AI *feedback*). El objetivo de esta fase es hacer el modelo más útil, seguro y alineado con lo que esperamos, evitar respuestas dañinas o incoherentes y mejorar tono, claridad y comportamiento.

Minuto 7:35.

## Referencias

- [Curso IA para programadores (2026 MiduDev)](https://www.youtube.com/watch?v=2aN_-m1uU4k&pp=ygUXaGVycmFtaWVudGFzIGlhIG1pZHVkZXY%3D)
- [How LLMs Actually Generate Text (Every Dev Should Know This)](https://youtu.be/NKnZYvZA7w4?si=FmSS6Kj0lkUujC0y)
- https://youtu.be/XSFxZ5cf5xo?si=tTEHF8j1paMoQiWV
- https://youtu.be/Ywgn96xVjqc?si=fA5gRm45ZmYLD3U7
- https://youtu.be/Hk0jHDzkE2U?si=30NHVeHjaJ90hkOS