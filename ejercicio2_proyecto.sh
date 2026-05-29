# !/bin/bash

# ejercicio2_proyecto.sh

# Crear estructura de directorios para un proyecto de metagenómica
PROYECTO="mi_proyecto_bioinfo"

echo "creando estructura de directorios para un proyecto: $PROYECTO"

mkdir -p $PROYECTO/{datos_way,datos_procesados,resultados,scripts,logs,referencias}

echo "Estructura creada:"
find $PROYECTO -type d | sort

echo ""
echo "¡Listo para comenzar tu análisis!"
