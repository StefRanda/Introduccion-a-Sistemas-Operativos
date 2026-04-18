#!/bin/bash
# Script de verificacion - Proyecto DevOps 
# By Nia

# Variables: Sin espacios alrededor del '=' 
# Usamos $(whoami) para asegurar que capture tu usuario en Termux 
USER_ACTUAL=$(whoami)
DIRECTORIO_ACTUAL=$PWD

echo "------------------------------------------"
echo "Hola $USER_ACTUAL. Iniciando chequeo..." 
echo "Estas trabajando en $DIRECTORIO_ACTUAL" 
echo "------------------------------------------"

# Interactividad: read guarda lo que ingreses 
echo -n "Por favor ingresa el nombre de una carpeta para verificar: "
read CARPETA_A_BUSCAR

# Logica de control: test -d verifica si es un directorio 
if [ -d "$CARPETA_A_BUSCAR" ]; then 
    echo "✅ El directorio '$CARPETA_A_BUSCAR' existe correctamente."
else
    echo "❌ No se pudo encontrar el directorio '$CARPETA_A_BUSCAR'."
fi
