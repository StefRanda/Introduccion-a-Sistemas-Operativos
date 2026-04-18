# Introducción a Sistemas Operativos y DevOps 🚀

Este repositorio contiene las prácticas y laboratorios realizados durante mi formación en infraestructura y administración de sistemas Linux. El enfoque principal es la automatización, la gestión de entornos mediante terminal y la seguridad de servidores.

## 🛠️ Tecnologías y Entorno
* **Sistema:** Linux (emulado vía Termux en Tablet Android).
* **Lenguajes:** Bash Scripting.
* **Editores:** VIM (configuración avanzada) y Nano.
* **Seguridad:** Protocolo SSH con cifrado asimétrico.

---

## 📂 Proyectos Incluidos

### 1. Automatización con Bash (`verificador.sh`)
Un script interactivo diseñado para validar la integridad del sistema de archivos.
* **Funcionalidad:** Identifica el usuario actual, la ruta de trabajo y verifica la existencia de directorios críticos.
* **Conceptos aplicados:** Variables de entorno, entrada de usuario (`read`) y estructuras de control `if-else`.

### 2. Optimización del Entorno (`.vimrc`)
Configuración persistente para el editor VIM, optimizada para el desarrollo de scripts:
* Activación de números de línea (`set number`).
* Auto-indentación inteligente para legibilidad de código.
* Conversión de tabs a espacios (estándar DevOps).

### 3. Hardening de Servidores (`sshd_config_ejemplo`)
Guía de buenas prácticas de seguridad para el servicio SSH:
* Cambio de puertos por defecto (seguridad por oscuridad).
* Deshabilitación de login directo como `root`.
* Implementación de autenticación exclusivamente por llaves RSA.

---

## 📈 Aprendizajes Clave
* Gestión de repositorios remotos mediante **Git** y autenticación por **SSH**.
* Manejo de la terminal en entornos móviles (Termux).
* Configuración de persistencia en editores modales.

**Desarrollado por:** Stefania Eliana Randazzo 🇦🇷
