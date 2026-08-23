---
title: Proyecto
date: 2026-08-22
---
## ¿Qué es OCUDU?

### Objetivos

Las siglas **OCUDU** se refieren a *Open Centralized Unit / Distributed Unit*. Este término está inspirado en la arquitectura 3GPP para redes 5G, específicamente en la desagregación (*disaggregation*) de los gNBs en elementos lógicos.

El propósito de OCUDU es desarrollar una pila (*stack*) de software CU/DU 5G que sea escalable, de código abierto (*open-source*) y con calidad de operador comercial (*carrier-grade*). El proyecto persigue dos metas principales:

- **Despliegue operativo:** Ofrecer un *stack* de software completamente funcional para que cualquier entidad pueda implementar un CU/DU 5G en entornos reales.
- **Plataforma de innovación:** Servir como base de desarrollo para las futuras redes móviles (6G y posteriores).

Este _stack_ cumple estrictamente con los estándares del **3GPP**, las APIs del ***Small Cell Forum (SCF)*** y las especificaciones de la ***O-RAN Alliance***.

El núcleo tecnológico de OCUDU se basa en el código de **srsRAN** (congelado a finales de 2025). A partir de esta base, ha evolucionado hacia un proyecto comunitario e independiente de fabricantes (*vendor-neutral*). Se da continuidad al código, la arquitectura y la comunidad, y se modifican su gobernanza, licenciamiento y contribución al proyecto.

La ambición global de OCUDU es transformarse en **el kernel Linux de la RAN**. Su objetivo es consolidarse como el núcleo (*core*) estandarizado sobre el cual se construyan y diversifiquen los múltiples casos de uso de las telecomunicaciones del futuro.

### Modelo de Gobierno

El proyecto está alojado por la **Linux Foundation**. En concreto, se han constituido 2 órganos de gobierno:

- ***OCUDU Ecosystem Foundation***: Encargado de las decisiones estratégicas y *roadmap*. Está abierto a la participación de la industria y la investigación (potenciales miembros).
- ***Technical Steering Committee*** (TSC): Centrado en las decisiones técnicas mediante procedimientos abiertos a través del repositorio del proyecto. La forma de participar es contribuyendo con código, documentación u otros recursos-

### Licenciamiento

El software se distribuye bajo una licencia completamente permisiva: **BSD 3-Clause Open MPI**. Por tanto, no existen restricciones ni obligaciones de tipo *copyleft*.

### Público objetivo

El público objetivo del proyecto incluye:

- **Desarrolladores:** Profesionales que crean soluciones o integran sistemas basados en **Open RAN**.
- **Investigadores:** Académicos y científicos corporativos que buscan una plataforma de nivel de producción (*production-quality*) para experimentar con **5G y 6G**.
- **Operadores y desplegadores de red:** Empresas que diseñan soluciones de **RAN desagregada** o despliegan redes móviles (tanto redes privadas 5G como operadores públicos).
- **Integradores de sistemas:** Especialistas que combinan el núcleo de software RAN con elementos **5GC y RUs**.

### Problema a resolver

Tradicionalmente, la RAN ha sido un entorno de extrema complejidad, propietario, cerrado (*black box*) y hecho a medida (*bespoke*), donde cualquier modificación resultaba muy costosa.

Aunque Open RAN (O-RAN) ha transformado la arquitectura y las interfaces al definir un estándar abierto, la mayoría de las implementaciones actuales siguen siendo propietarias, tanto en software como en hardware. Por lo tanto, el ecosistema no es completamente abierto.

**OCUDU** nace para convertirse en la implementación O-RAN de referencia: una solución 100 % abierta que ofrece total libertad para ser utilizada, inspeccionada y modificada. El objetivo es construir unos cimientos y un ecosistema comunes sobre los cuales cualquiera pueda desarrollar sus propias soluciones, replicando el modelo que **Linux** supuso para los sistemas operativos.

## Descripción de alto nivel

**OCUDU es el núcleo del ecosistema O-RAN.** Funciona como una función de red integrada que combina las tareas de la *Central Unit* (**CU**) y la *Distributed Unit* (**DU**). Su papel principal es actuar como la **capa de interconexión clave** entre el núcleo de la red (5GC), los sistemas de gestión (SMO/RIC) y las unidades de radio (O-RUs).

![[OCUDU_ORAN_gNB_Arch.svg]]

Como se puede observar en el diagrama, OCUDU gestiona de forma nativa las siguientes conexiones:

- **Con el Núcleo 5G (5GC):** Se comunica mediante las interfaces **N2** (plano de control) y **N3** (plano de usuario).
- **Con la Gestión y Orquestación (SMO / RIC):** Utiliza la interfaz **O1** para la operación y mantenimiento con el SMO, y la interfaz **E2** para el control inteligente con el RIC.
- **Con las Unidades de Radio (O-RUs):** Se conecta a través de la interfaz de transporte frontal (***Fronthaul***). Es compatible principalmente con la división funcional **Split 7.2**, aunque también soporta **Split 8**.

En su interior, OCUDU respeta la **arquitectura abierta y las interfaces estándar** definidas por la alianza O-RAN para la separación de funciones CU/DU.

Para su despliegue operativo, OCUDU se ejecuta como una **función de red virtualizada o contenedorizada** sobre un servidor físico. Su funcionamiento óptimo depende de una infraestructura tecnológica organizada en capas:

- **O-Cloud:** La nube de infraestructura para telecomunicaciones.
- **CaaS (Container as a Service):** La plataforma de gestión de contenedores.
- **Sistema Operativo:** La base de software del servidor.

### ¿Qué implementa?

**OCUDU implementa por completo las capas L1, L2 y L3 de la pila de protocolos de la red de acceso radio (RAN) 5G de forma nativa en software.**

La gran innovación de esta arquitectura radica en la **capa física (L1)**. Tradicionalmente, solo las capas superiores (L2 y L3) se ejecutaban mediante software, mientras que la L1 se delegaba a hardware dedicado debido a su alta exigencia de cómputo. OCUDU rompe este esquema al trasladar también la L1 al software, asumiendo el procesamiento de señales (DSP) y las tareas de computación intensiva (*compute-heavy*) directamente en procesadores de propósito general.

Ecosistema de OCUDU, su relación con O-RAN, con building blocks.

Un poco más profundo en sus componentes, como se organiza y como construir un despliegue O-RAN.

Roadmap de 2-3 años

## Repositorio

Los repositorios de OCUDU se encuentran en su organización correspondiente de GitLab: https://gitlab.com/ocudu.



