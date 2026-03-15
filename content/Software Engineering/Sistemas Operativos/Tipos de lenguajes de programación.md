---
title: Tipos de lenguajes de programación
date: 2026-03-15
---
## Resumen

De una forma u otra, independientemente del lenguaje utilizado, todo código debe acabar convertido en **instrucciones máquina**, ya que es lo único que el procesador entiende. La diferencia radica en **cuándo** y **cómo** ocurre esa traducción:

- **C (Compilado):** El código se traduce por completo antes de ejecutarse. Un programa llamado **compilador** (como gcc) lo transforma directamente en un archivo binario con instrucciones máquina específicas para un procesador y sistema operativo concretos. Esto lo hace muy rápido, pero **poco portable**: un programa compilado para Windows no funcionará en Linux sin volver a compilarlo.
- **Python (Interpretado):** El código se traduce "sobre la marcha". Un programa llamado **intérprete** lee y ejecuta las instrucciones en tiempo real. Esto facilita la **portabilidad**, ya que el mismo archivo de código funciona en cualquier sistema que tenga instalado el intérprete de Python, el cual se encarga de adaptar las instrucciones al hardware local.
- **Java (Híbrido):** Busca el equilibrio entre velocidad y portabilidad. Primero se compila a **Bytecode**, un formato binario intermedio universal. Luego, este Bytecode es ejecutado por la **Java Virtual Machine (JVM)**. Gracias a esto, Java cumple su lema: _"Escríbelo una vez, ejecútalo en cualquier lugar"_, porque el Bytecode es el mismo para todos, y es la JVM la que lo traduce finalmente a la máquina específica.

## Referencias

- [¿Cómo se comunican programas escritos en lenguajes distintos? (Antonio Sarosi)](https://www.youtube.com/watch?v=7f9NzvvPo9g)