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
- ¿Qué es un servidor MCP?
- ¿Qué son las *agents skills*?
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

### *Prompt*

El *prompt* es todo lo que el modelo recibe como entrada en una llamada. El modelo no tiene memoria real, sino que todo lo que "recuerda" debe estar incluido en el *prompt*. Esto incluye:
- *System message*: Son las reglas globales que definen el comportamiento del modelo. Se trata de una especie de configuración del modelo que permite establecer reglas, definir el estilo o añadir restricciones. Por ejemplo, "responde únicamente a preguntas sobre España". No es una configuración rígida, sino que es texto que el modelo tiene en cuenta pero que puede ser ignorado o sobrescrito en algunos casos. Es algo fundamental para añadir cierta seguridad al modelo, aunque no elimina el riesgo de *prompt injections*.
- *Assistant message*: Es el historial de salidas del modelo, es decir, las respuestas previas. Se incluyen para mantener el contexto de la conversación.
- *User message*: Es la entrada del usuario, tanto en la llamada actual como en todas las anteriores, es decir, el mensaje actual y el historial de mensajes anteriores.

### *Tokens*

Los modelos, los LLMs, no procesan texto directamente (aunque lo parezca), sino que trabajan con ***tokens***.

> Un *token* es una unidad básica de texto en la que el modelo divide la entrada.

Un *token* es un fragmento de texto, que puede ser una palabra, una parte de una palabra, un signo de puntuación o espacios y caracteres especiales. Por ejemplo, la palabra *hola* puede ser 1 o varios *tokens*. 

¿Por qué existen los *tokens*? Los modelos necesitan convertir el texto en números. El flujo de datos, de forma simplificada, es el siguiente:
1. El texto se divide en *tokens*.
2. Los *tokens* se mapean en números (*embeddings*).
3. El modelo procesa esos números o *embeddings*.

La tokenización no es algo universal sino que depende del modelo, del LLM, ya que cada uno usa su propio *tokenizer*. Los modelos no son comparables por número de *tokens*, ya que el mismo texto se procesa en un número de *tokens* diferente según el modelo.

Existen herramientas que permiten verificar cuántos *tokens* forman una palabra o una oración. Por ejemplo, [Tokenizer](https://platform.openai.com/tokenizer) de OpenAI o [Claude Tokenizer](https://claude-tokenizer.vercel.app/).

![[OpenAI_Tokenizer_GPT-5.png]]

![[OpenAI_Tokenizer_GPT-4.png]]

Los *tokens* son importantes por varias razones:
1. Coste: El uso de modelos (API) se factura en función de *tokens* de entrada (*input*) y *tokens* de salida (*output*). A mayor número de *tokens*, más coste.
2. Ventana de contexto: Los *tokens* determinan el límite de contexto. La ventana de contexto (*context window*) se mide en *tokens*. Como ya se ha indicado, dicha ventana incluye: *system prompt*, historial, *prompt* actual y respuesta.
3. Rendimiento: Un mayor número de *tokens* implica más latencia y más uso de memoria.

El número de *tokens* también tiene una fuerte dependencia con el idioma. Un mismo *prompt* puede ser más eficiente en inglés o en español que en alemán. El inglés suele ser eficiente porque los *tokenizers* están optimizados para él y porque muchas palabras comunes están bien representadas. Los idiomas con palabras largas, como el alemán, pueden generar un número de *tokens* mayor.

## Programación

Los LLMs tienen aplicaciones en múltiples ámbitos más allá del *chatbot* genérico. En el campo de la programación, han dado lugar a un ecosistema de herramientas que abarca desde el autocompletado inteligente hasta sistemas más avanzados como asistentes de código y agentes capaces de ejecutar tareas complejas. Además, surgen nuevas formas de integración con el entorno de desarrollo, como el uso de herramientas externas o protocolos como MCP.
### Autocompletado (con IA)

Es la capacidad de un modelo para predecir y sugerir código mientras escribes, basándose en el contexto actual. Puede ir desde completar una línea, completar una función hasta generar bloques de código a partir de un comentario.

Es diferente al autocompletado clásico, basado en reglas, sintaxis y que no entendía código, simplemente realizaba sugerencias de código.

![[Github_Copilot_Completions.gif]]

Este es, a día de hoy, el nivel más básico de uso de IA en programación. La mayoría de editores modernos ya lo tienen integrado:
- Visual Studio Code (con GitHub Copilot)
- Cursor (autocompletado con *Tab*)
- Windsurf Editor (autocompletado con *Tab*)

Normalmente, este tipo de autocompletado:
- Tiene en cuenta principalmente el contexto del archivo actual
- Puede usar información adicional (otros archivos abiertos, imports, etc.)
- Se activa de forma interactiva (por ejemplo, al pulsar *Tab*)

### Asistentes conversacionales

Los asistentes conversacionales son los ya clásicos chat web con los que se interactúa mediante pregunta-respuesta pero utilizados para generar código, explicar funciones, ayudar en *debugging* o proponer soluciones. Ejemplos claros son ChatGPT o Claude.

A la hora de trabajar, son útiles como apoyo, pero tienen limitaciones importantes en entornos reales de desarrollo. No están integrados directamente en el IDE, obligan muchas veces a copiar y pegar código, y no tienen acceso completo al contexto del proyecto. Por eso, aunque son potentes, suelen ser menos prácticos que herramientas integradas.

En los últimos años han evolucionado incorporando funcionalidades más avanzadas que van más allá del chat tradicional. Algunas interfaces permiten editar código directamente, seleccionar fragmentos concretos y hacer preguntas sobre ellos, o trabajar en un entorno más estructurado parecido a un editor dentro del navegador.

Dentro de esta evolución aparece el concepto de “canvas” o vista interactiva, donde se puede editar código y ver resultados en tiempo real. Esto es especialmente útil en aplicaciones con componente visual, como desarrollo web o interfaces gráficas, donde puedes ver inmediatamente el efecto de los cambios.

![[Gemini_Canvas.png]]

Sin embargo, en otros contextos como desarrollo en C, sistemas embebidos o software complejo, este tipo de funcionalidad aporta menos valor. En estos casos no existe una vista previa directa, necesitas compilar, enlazar librerías y trabajar con un entorno específico, por lo que el modelo actúa más como asistente de apoyo que como herramienta interactiva en tiempo real.

En resumen, los asistentes conversacionales son muy potentes para generar, entender y discutir código, pero su falta de integración con el entorno de desarrollo limita su eficiencia en proyectos grandes o complejos.

### Editores (con IA)

Los editores de código con inteligencia artificial integrada representan un paso más avanzado respecto a los asistentes conversacionales. Son herramientas donde la IA no está separada en un chat externo, sino integrada directamente en el flujo de desarrollo.

Un ejemplo claro es Visual Studio Code, que se ha posicionado como uno de los editores más utilizados y que ha ido incorporando capacidades de IA de forma progresiva. Es importante entender que VS Code es un editor de código, no un IDE (*Integrated Development Environment*), aunque en la práctica la línea entre ambos se ha difuminado bastante.

De forma general, un editor de código es más ligero, rápido y flexible, y permite extender sus funcionalidades mediante *plugins*. Por otro lado, un IDE es una solución más completa que incluye herramientas como compiladores, depuradores o integraciones más profundas, lo que lo hace más pesado pero también más potente para ciertos entornos. En la práctica, gracias a su sistema de extensiones, VS Code puede comportarse como un IDE completo si se configura adecuadamente.

![[VS_Code_Layout.png]]

El salto importante con estos editores no es solo el autocompletado, sino la integración de un chat conversacional directamente sobre el código. Esto permite interactuar con el proyecto sin salir del editor: hacer preguntas, generar código o incluso aplicar cambios directamente sin necesidad de copiar y pegar. Herramientas como GitHub Copilot permiten este tipo de interacción y añaden una capa de inteligencia sobre el propio entorno de desarrollo.

A diferencia de un chat web, este chat tiene acceso al contexto del proyecto, lo que le permite leer archivos y entender la estructura del repositorio para dar respuestas precisas, aunque no puede aplicar modificaciones de forma autónoma; solo sugiere el código para que el desarrollador lo implemente.

El editor tiene acceso a la mayoría de los modelos más conocidos, por lo que podemos seleccionar el que queremos utilizar (GPT, Claude Opus, Gemini, etc.).

![[VS_Code_Models.png]]

Un aspecto muy importante es la gestión del contexto. El modelo no ve todo el proyecto automáticamente, sino que se le proporciona contexto de forma explícita o implícita. Por ejemplo, se pueden mencionar archivos (mediante *hashtag* en el caso de VS Code), seleccionar fragmentos de código o trabajar sobre partes concretas. Esto es clave, ya que la calidad de las respuestas depende directamente de la información que se le proporcione.

![[VS_Code_AI_add_files_as_context.png]]

Dentro del chat, tenemos la opción de monitorizar cómo vamos consumiendo la ventana de contexto (*context window*). Cuantos más datos queramos incluir, mayor será el tamaño del contexto y más caro nos saldrá. Además, es importante no olvidar que la ventana se expande a medida que avanzamos en la charla, porque con cada mensaje estamos reenviando todas nuestras interacciones anteriores.

![[VS_Code_AI_Context_Window_Status.png]]

En cuanto al coste, aunque los modelos subyacentes funcionan con *tokens*, las herramientas comerciales suelen abstraer esto mediante sistemas de créditos o suscripciones. Dependiendo del modelo utilizado (más potente o más rápido), el consumo puede variar. Además, cuanto mayor sea el contexto enviado al modelo, mayor será el coste y la latencia.

Ejemplos de editores de código con IA (son todos *forks* de VS Code):
- [VS Code](https://code.visualstudio.com/) (Microsoft)
- [Cursor](https://cursor.com/) (Anysphere)
- [Windusrf](https://windsurf.com/) (Codeium, adquirido por OpenAI)
- [Antigravity](https://antigravity.google/) (Google)
- [Kiro](https://kiro.dev/) (AWS)
- [TRAE](https://www.trae.ai/) (ByteDance)

### Agentes

El chat integrado en el editor supone un gran salto como herramienta de consulta con acceso al contexto del proyecto, pero los agentes van un paso más allá. Mientras que el chat espera a que el usuario implemente sus sugerencias, el agente tiene la capacidad de abrir archivos, crear nuevas estructuras y aplicar cambios coordinados en todo el proyecto.

Un LLM por sí solo es reactivo: recibe un input y genera una respuesta. No puede ejecutar acciones ni interactuar con el entorno.

>Un agente es un sistema que utiliza un LLM como núcleo de decisión, pero le añade herramientas y un bucle de ejecución que le permite actuar de forma iterativa hasta completar una tarea.

El LLM decide qué hacer en cada paso (por ejemplo, leer un archivo, modificar código o ejecutar un comando), pero no ejecuta esas acciones directamente. Existe un sistema externo que interpreta esas decisiones y las ejecuta mediante código tradicional (lectura/escritura de ficheros, ejecución de comandos, llamadas a APIs, etc.).

El funcionamiento sigue un ciclo: el LLM analiza la tarea, decide una acción, el sistema la ejecuta, y el resultado se devuelve al modelo como nuevo contexto. Este proceso se repite hasta que la tarea se considera completada.

En este sentido, el agente no es el modelo en sí, sino la combinación de un LLM con herramientas y un mecanismo de control que permite iterar y operar sobre el entorno. El LLM aporta la “inteligencia” (decisión paso a paso) y el agente aporta la capacidad de actuar.

Un agente no es un modelo, sino un programa tradicional que utiliza un LLM como núcleo de decisión.

Internamente, consiste en un bucle que:
- Consulta al LLM qué hacer.
- Ejecuta acciones mediante código normal (leer archivos, ejecutar comandos, etc.).
- Devuelve los resultados al modelo.

Este proceso se repite hasta completar la tarea.

Estos agentes también están integrados en los editores de código. Aunque pueden variar ligeramente de un editor a otro, por lo general todos ellos ofrecen 4 tipos de agente:
- *Agent*: Capaz de editar ficheros, ejecutar comandos, etc. Todo lo que necesite para cumplir la tarea pedida. Es el que está activado por defecto
- *Plan*: Realiza una investigación del proyecto y lo que se quiere conseguir y elabora un plan con múltiples pasos que será necesario completar para cumplir la tarea. Este modo es interesante porque muchas veces lo que interesa es utilizar un modelo muy caro para planear lo que hay que hacer y luego un modo muy barato (o rápido) para ejecutar ese plan.
- *Ask*: Solo preguntas sobre el proyecto. Sin edición ni ejecución. 
- *Edit*: Solo edición de ficheros. Sin ejecución de código.

![[VS_Code_chat_modes.png]]

El modo *Agent* es el que viene por defecto. Tiene 3 tipos de ejecución: 
- *Local*: Ejecuta la tarea directamente sobre el chat y aplica los cambios en local, en nuestra propia máquina. Es el que está activado por defecto.
- *Background*: Delega la tarea en un agente en segundo plano, que funciona en local en nuestra máquina e implementa los cambios de manera independiente. En concreto, crea un *worktree* de Git.
- *Cloud*: Delega la tarea en un agente en la nube, es decir, nuestro ordenador puede estar apagado, e implementará los cambios en una *pull request*.

![[VS_Code_Agent_Types.png]]

Los agentes son autónomos pero es importante destacar que, por defecto, estos sistemas suelen requerir confirmación del usuario antes de aplicar cambios, especialmente cuando afectan a archivos o al sistema. En el caso de VS Code se puede desactivar a nivel de sesión, a nivel de *workspace* o de forma completa (no recomendable).

Un agente puede implementarse desde cero como un programa tradicional que contiene un bucle. De hecho, existen *frameworks* como LangGraph que permiten construir agentes fácilmente debido a su capacidad para manejar flujos no lineales y a su persistencia de estado. 

También se pueden crear agentes personalizados desde el propio editor de código. Por ejemplo, VS Code tiene una [guía](https://code.visualstudio.com/docs/copilot/customization/custom-agents) para ello. La diferencia principal radica en el nivel de abstracción y control. Mientras que programar con LangGraph es como construir el motor de un coche pieza por pieza, usar las opciones de VS Code o Antigravity es como configurar el GPS y el modo de conducción de un coche que ya viene fabricado. Simplemente se personaliza un agente previamente implementado mediante *prompts* específicos para tareas dentro del editor, pero el motor que hay por debajo no se modifica.

![[VS_Code_custom_agent.png]]

Por último, estas herramientas incorporan mecanismos de seguridad y control como historial de cambios o puntos de restauración, que permiten deshacer fácilmente modificaciones realizadas por la IA. Esto es especialmente útil cuando se trabaja con agentes que pueden realizar cambios amplios en el código. En el caso de VS Code, se guardan en forma de *checkpoints*.

### *Command Line Interface* (CLI)

El siguiente nivel en herramientas de IA aplicadas a programación consiste en pasar del editor de código a la interacción directa a través de la línea de comandos (CLI). En lugar de trabajar sobre una interfaz gráfica, se utiliza la terminal como punto de entrada, desde la que se envían instrucciones a un agente.

En este contexto, lo que hay por debajo sigue siendo uno o varios agentes. Normalmente se interactúa con un único agente principal, pero ese agente puede orquestar múltiples subagentes o herramientas internamente según la tarea. Es decir, el usuario no gestiona varios agentes directamente, pero el sistema sí puede hacerlo por debajo.

El ejemplo más representativo a día de hoy es [Claude Code](https://code.claude.com/docs/en/quickstart).  Aunque puede integrarse en VS Code, Slack o la web, su uso principal es desde la terminal. Hay otros, como Codex o Github Copilot que también tienen el suyo, pero Claude Code es el más famoso.

#### Claude Code

Se trata de un agente de terminal, es decir, un agente autónomo diseñado para operar directamente sobre tu entorno de desarrollo. No se limita a sugerir código: si se le da una tarea compleja (por ejemplo, migrar una base de datos), es capaz de generar un plan, ejecutar comandos de terminal, analizar errores, modificar el código y repetir el proceso hasta completar la tarea o alcanzar un punto razonable.

Este tipo de herramientas operan directamente sobre tu repositorio y entorno local, sin necesidad de una interfaz gráfica. Es decir, vive en tu terminal. Esto no significa que no tengan interfaz, sino que la interfaz es la propia terminal.

![[Claude_Code.png]]

Claude Code (y herramientas similares) se instala como un programa más del sistema. Normalmente:
- se instala mediante un script (por ejemplo, con *curl*)
- se añade al PATH del sistema
- se invoca como un comando cualquiera (`claude`, `cc`, etc.)

Cuando se ejecuta, el agente toma como contexto el directorio actual desde el que se haya lanzado el comando. Es decir, trabaja sobre ese repositorio porque es el que ve.

Respecto a la seguridad, por defecto este tipo de agentes:
- operan dentro del directorio actual.
- piden confirmación para acciones sensibles (modificar archivos, ejecutar comandos, etc.).
- pueden estar limitados por configuración o sandboxing.

Aun así, no hay aislamiento total garantizado a menos que se imponga (por ejemplo, usando contenedores Docker o entornos aislados). Es decir, pueden modificar cualquier cosa a la que el proceso tenga permisos si no se restringe explícitamente.

Dentro de Claude Code existen varios comandos que permiten interactuar con el agente y controlar su comportamiento. Estos son los más destacados:
- *init*: Analiza el contenido de un repositorio y genera un archivo (normalmente CLAUDE.md) donde describe la estructura del proyecto, los componentes principales y cómo trabajar con él. Este archivo actúa como una especie de memoria o guía para el agente, y puede ser editado manualmente para añadir contexto adicional, reglas o convenciones del proyecto..
- *agent*: Permite crear agentes o subagentes personalizados. Estos pueden definirse a nivel global o por proyecto. También pueden generarse automáticamente describiendo en lenguaje natural qué se quiere que hagan, delegando en el propio LLM la creación de su configuración.
- *model*: Permite seleccionar el modelo que se va a utilizar, lo cual es relevante tanto por coste como por capacidades.
- *context*: Permite visualizar el uso de la ventana de contexto (*context usage*), algo clave para 
- *compact*: Sirve para resumir la conversación previa y reducir el consumo de contexto. Es importante tener en cuenta que esto también consume recursos, ya que utiliza el propio modelo.
- *mcp*: Muestra los servidores MCPs (Model Context Protocols) conectados, que son básicamente integraciones externas que amplían las capacidades del agente (por ejemplo, acceso a herramientas, APIs o fuentes de datos adicionales).
- *skills*: Muestra las *agent skills* instaladas y disponibles, tanto a nivel de proyecto como a nivel global.

![[Claude_Code_context.png]]

Claude Code no depende estrictamente de una suscripción concreta, sino del acceso a modelos. Lo que se paga realmente es el uso del modelo (tokens), no el agente en sí. La herramienta permite usar modelos locales mediante soluciones como [Ollama](https://ollama.com/). 

También existen alternativas totalmente *open source* como [OpenCode](https://opencode.ai/) que siguen un enfoque similar, conectándose a distintos modelos, incluidos algunos gratuitos con límites.

### MCP

MCP son las siglas de *Model Context Protocol*. Cuando se habla de MCPs, en la práctica se está haciendo referencia a servidores MCP. MCP es un protocolo abierto, originalmente impulsado por Anthropic, que define una forma estándar de conectar modelos o agentes con herramientas externas.

No se conectan solo los agentes, sino cualquier sistema basado en LLMs (incluyendo asistentes o editores con IA). Aun así, donde más sentido tiene es en agentes, porque son los que necesitan interactuar con el entorno de forma activa.

El objetivo de MCP es permitir que estos sistemas accedan a capacidades externas como APIs de terceros, bases de datos, sistemas locales o servicios adicionales. De esta forma, se amplían las herramientas disponibles más allá de lo que el modelo puede hacer por sí mismo. Así, se le dan más herramientas a nuestros agentes que de otra manera que no podrían tener. Sin MCP, el agente está limitado a lo que el *runtime* le haya implementado; con MCP, puede acceder a herramientas desarrolladas por terceros de forma estandarizada.

Un ejemplo sería un servidor MCP para Chrome. Aquí la clave es que alguien ha desarrollado un sistema capaz de controlar el navegador (abrir pestañas, hacer clic, leer contenido, etc.). El agente no sabe hacer eso directamente. Lo único que hace es enviar una petición estructurada al servidor MCP, y este se encarga de traducir esa petición en acciones reales sobre Chrome.

Un MCP es un adaptador entre el mundo del LLM y el mundo real. Es decir, convierte intenciones (lo que el modelo quiere hacer) en operaciones concretas (lo que el sistema ejecuta), y devuelve el resultado de vuelta al modelo.

Otra forma de verlo, más técnica, es como una API estandarizada de herramientas:
- El agente decide qué quiere hacer.
- El MCP expone cómo hacerlo.
- El sistema ejecuta la acción y devuelve el resultado.

En el caso de Claude Code, existen servidores MCP disponibles de forma nativa, pero también [se pueden añadir otros externos](https://code.claude.com/docs/en/mcp). Esto permite extender las capacidades del agente sin modificar su implementación, simplemente conectándolo a nuevos servidores MCP.

### *Agent Skills*

Los servidores MCP permiten conectar el agente (o cualquier sistema basado en LLMs) con herramientas externas, APIs o fuentes de datos. En ese sentido, aportan nuevas capacidades “hacia fuera”, es decir, permiten que el sistema haga cosas que antes no podía hacer.

Las *agent skills*, en cambio, operan en otra dimensión: no añaden capacidades externas, sino que estructuran y reutilizan conocimiento. Son módulos reutilizables que encapsulan instrucciones, contexto, reglas, metadatos y, en algunos casos, recursos adicionales que el modelo puede utilizar cuando lo considere necesario.

La idea clave es evitar repetir continuamente las mismas instrucciones en cada interacción. En lugar de copiar y pegar *prompts*, defines una *skill* que contiene ese conocimiento y la haces disponible para el modelo. A partir de ahí, es el propio sistema el que decide cuándo cargarla y utilizarla en función del contexto.

La mejor analogía es una librería en programación, salvo que una *skill* es más parecida a una librería de conocimiento que a una librería de código. No define funciones ejecutables, sino guías, criterios y contexto que influyen en cómo el modelo razona y genera respuestas.

En muchos sistemas actuales, las *skills* se implementan como ficheros *markdown* que contienen texto estructurado (a veces con metadatos en cabecera). Ese contenido se inyecta en el contexto del modelo cuando se activa la *skill*. Por ejemplo, a continuación se muestra el contenido del *markdown* de *frontend-design* para Claude, una de las más conocidas para crear webs con agentes.

```
---
name: frontend-design
description: Create distinctive, production-grade frontend interfaces with high design quality. Use this skill when the user asks to build web components, pages, artifacts, posters, or applications (examples include websites, landing pages, dashboards, React components, HTML/CSS layouts, or when styling/beautifying any web UI). Generates creative, polished code and UI design that avoids generic AI aesthetics.
license: Complete terms in LICENSE.txt
---

This skill guides creation of distinctive, production-grade frontend interfaces that avoid generic "AI slop" aesthetics. Implement real working code with exceptional attention to aesthetic details and creative choices.

The user provides frontend requirements: a component, page, application, or interface to build. They may include context about the purpose, audience, or technical constraints.

## Design Thinking

Before coding, understand the context and commit to a BOLD aesthetic direction:
- **Purpose**: What problem does this interface solve? Who uses it?
- **Tone**: Pick an extreme: brutally minimal, maximalist chaos, retro-futuristic, organic/natural, luxury/refined, playful/toy-like, editorial/magazine, brutalist/raw, art deco/geometric, soft/pastel, industrial/utilitarian, etc. There are so many flavors to choose from. Use these for inspiration but design one that is true to the aesthetic direction.
- **Constraints**: Technical requirements (framework, performance, accessibility).
- **Differentiation**: What makes this UNFORGETTABLE? What's the one thing someone will remember?

**CRITICAL**: Choose a clear conceptual direction and execute it with precision. Bold maximalism and refined minimalism both work - the key is intentionality, not intensity.

Then implement working code (HTML/CSS/JS, React, Vue, etc.) that is:
- Production-grade and functional
- Visually striking and memorable
- Cohesive with a clear aesthetic point-of-view
- Meticulously refined in every detail

## Frontend Aesthetics Guidelines

Focus on:
- **Typography**: Choose fonts that are beautiful, unique, and interesting. Avoid generic fonts like Arial and Inter; opt instead for distinctive choices that elevate the frontend's aesthetics; unexpected, characterful font choices. Pair a distinctive display font with a refined body font.
- **Color & Theme**: Commit to a cohesive aesthetic. Use CSS variables for consistency. Dominant colors with sharp accents outperform timid, evenly-distributed palettes.
- **Motion**: Use animations for effects and micro-interactions. Prioritize CSS-only solutions for HTML. Use Motion library for React when available. Focus on high-impact moments: one well-orchestrated page load with staggered reveals (animation-delay) creates more delight than scattered micro-interactions. Use scroll-triggering and hover states that surprise.
- **Spatial Composition**: Unexpected layouts. Asymmetry. Overlap. Diagonal flow. Grid-breaking elements. Generous negative space OR controlled density.
- **Backgrounds & Visual Details**: Create atmosphere and depth rather than defaulting to solid colors. Add contextual effects and textures that match the overall aesthetic. Apply creative forms like gradient meshes, noise textures, geometric patterns, layered transparencies, dramatic shadows, decorative borders, custom cursors, and grain overlays.

NEVER use generic AI-generated aesthetics like overused font families (Inter, Roboto, Arial, system fonts), cliched color schemes (particularly purple gradients on white backgrounds), predictable layouts and component patterns, and cookie-cutter design that lacks context-specific character.

Interpret creatively and make unexpected choices that feel genuinely designed for the context. No design should be the same. Vary between light and dark themes, different fonts, different aesthetics. NEVER converge on common choices (Space Grotesk, for example) across generations.

**IMPORTANT**: Match implementation complexity to the aesthetic vision. Maximalist designs need elaborate code with extensive animations and effects. Minimalist or refined designs need restraint, precision, and careful attention to spacing, typography, and subtle details. Elegance comes from executing the vision well.

Remember: Claude is capable of extraordinary creative work. Don't hold back, show what can truly be created when thinking outside the box and committing fully to a distinctive vision.
```

No añade ninguna herramienta nueva, pero cambia radicalmente el tipo de output que genera el modelo, guiándolo hacia un diseño más elaborado y menos genérico.

Desde un punto de vista práctico, esto supone un salto respecto al uso manual de *prompts* en archivos sueltos. En lugar de gestionar texto de forma externa y pegarlo en cada conversación, las *skills* permiten integrar ese conocimiento de forma estructurada y reutilizable dentro del propio sistema. En ese sentido, es una evolución natural y mucho más escalable.

Las *skills* pueden definirse a nivel global o a nivel de proyecto, lo que permite reutilizarlas entre distintos contextos o especializarlas para un repositorio concreto. Actualmente, no existe un estándar universal: cada herramienta (Claude Code, Cursor, VS Code, etc.) define su propio formato o ubicación, aunque la idea subyacente es la misma.

Una diferencia importante respecto a los *prompts* tradicionales es que las *skills* no se aplican necesariamente en cada interacción. A diferencia del *system prompt* o de instrucciones que siempre están presentes, las *skills* suelen activarse de forma dinámica en función del contexto y de lo que el modelo considera relevante. Esto permite mantener el contexto más limpio y eficiente, evitando sobrecargarlo con información innecesaria en cada petición.

El directorio o catálogo de *agent skills* más conocido es [skills.sh](https://skills.sh/), creado por Vercel. A día de hoy, dispone de más de 91.000 skills.

## Otras herramientas

### NotebookLM

## Referencias

- [Curso IA para programadores (2026 MiduDev)](https://www.youtube.com/watch?v=2aN_-m1uU4k&pp=ygUXaGVycmFtaWVudGFzIGlhIG1pZHVkZXY%3D)
- [How LLMs Actually Generate Text (Every Dev Should Know This)](https://youtu.be/NKnZYvZA7w4?si=FmSS6Kj0lkUujC0y)
- [Todo lo que necesitas saber sobre el desarrollo con IA (2026 BettaTech)](https://www.youtube.com/watch?v=MgtM_Ktuc5A)
- [La Nueva Forma de Programar (sin VibeCoding) (2026 BettaTech)](https://youtu.be/XSFxZ5cf5xo?si=tTEHF8j1paMoQiWV)
- [Esto es lo que Deberías Estar Aprendiendo Ahora Mismo (2026 BettaTech)](https://youtu.be/Ywgn96xVjqc?si=fA5gRm45ZmYLD3U7)
- [El Roadmap Definitivo Para Convertirte en Programador Senior en 2026 (BettaTech)](https://youtu.be/Hk0jHDzkE2U?si=30NHVeHjaJ90hkOS)