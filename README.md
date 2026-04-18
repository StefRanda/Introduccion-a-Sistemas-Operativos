# Introduccion-a-Sistemas-Operativos
Este repositorio contiene una guía técnica y práctica sobre los fundamentos de administración de sistemas Linux, cubriendo desde la estructura del sistema de archivos hasta la automatización con Bash y seguridad mediante SSH.

📂 1. El Sistema de Archivos (Linux Filesystem) 

Un archivo en Linux es una colección de información relacionada con un nombre, grabada en almacenamiento secundario. 
Es la unidad mínima de almacenamiento y posee una estructura definida según su tipo. 

El I-nodo (Identificador)
El sistema operativo referencia a los archivos mediante su i-nodo, no solo por su nombre. El i-nodo es una estructura de datos de tamaño fijo que contiene la 
metadata (atributos) y la ubicación física de los bloques en el dispositivo.

Atributos principales almacenados en el i-nodo:
  ● Identificador: Número único dentro del filesystem.
  ● Protección: Define los permisos de lectura, escritura y ejecución.
  ● UID / GID: IDs del usuario dueño y del grupo al que pertenece el archivo.
  ● Hard links: Cantidad de entradas de directorio que apuntan al mismo i-nodo.
  ● Timestamp: Fechas de creación, último acceso y modificación.

Sistema Ext4
Es el filesystem transaccional por defecto en Linux.
  ● Journaling: Cuenta con un registro de transacciones para recuperar el estado tras un fallo.
  ● Montado: Solo puede ser accedido si el sistema de archivos está montado.

⌨️ 2. Editor de Texto VIM
VIM (Vi Improved) es una versión avanzada y potente del clásico editor Vi, fundamental para la administración de servidores.

Modos de Operación
  ● Modo Entrada: Para ingresar o editar texto.
  ● Modo Comando: Para ejecutar funciones, buscar texto o gestionar el archivo (se accede con ESC).

Configuración Persistente (~/.vimrc)
Para que las preferencias no se pierdan al cerrar el editor, deben guardarse en el archivo .vimrc en el directorio home del usuario.

 ● Configuraciones recomendadas
:set nocompatible     " Desactiva compatibilidad con vi antiguo [cite: 216]
:set nobackup         " No crea archivos de backup [cite: 218]
:set autoindent       " Activa el sangrado automático [cite: 225]
:set expandtab        " Convierte pestañas en espacios [cite: 226]
:set shiftwidth=2     " Define el ancho del inventario en 2 espacios [cite: 227]
:filetype plugin on   " Carga plugins según el tipo de archivo [cite: 223]

📜 3. Shell Scripting con Bash
El scripting permite automatizar tareas agrupando comandos en un archivo ejecutable.

  ● Fundamentos TécnicosShebang (#!/bin/bash): Indica al sistema qué intérprete debe procesar el script.
  ● Variables: Se asignan con NOMBRE=valor. Se acceden usando el símbolo $ (ej. $USER para el usuario actual).
  ● Entrada/Salida: Usamos echo para mostrar texto (stdout) y read para capturar datos del teclado (stdin).

Ejemplo de Lógica de Control

#!/bin/bash
# Verificación de argumentos y condicionales
if [ $# -eq 0 ]; then
    echo "No se ingresaron argumentos." [cite: 323]
fi

# Bucle While para validación [cite: 402]
while test ${NUMERO} -lt 10; do
    echo -n "Ingrese un número mayor a 9 para salir: "
    read NUMERO
done

🔒 4. Seguridad y SSH (Secure Shell)
SSH es un protocolo de capa de aplicación que brinda seguridad al tráfico mediante cifrado asimétrico.

Conceptos Clave de Cifrado
  ● Clave Pública: Funciona como un "candado". Se comparte con el servidor para cifrar la información.
  ● Clave Privada: Funciona como la "llave" única. Nunca debe compartirse.

Fortalecimiento (Hardening) del Servidor

Para aumentar la seguridad, se deben modificar parámetros en /etc/ssh/sshd_config:
  ● Puerto no estándar: Port 2222 para evitar ataques automatizados en el puerto 22.
  ● Deshabilitar Root: PermitRootLogin no para obligar a usar usuarios con privilegios limitados.
  ● Autenticación por Llaves: Se recomienda usar authorized_keys para permitir el ingreso sin contraseña mediante la clave pública del cliente.



