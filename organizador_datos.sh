
#!/bin/bash

echo "========================================"
echo " ORGANIZADOR DE DATOS BIOINFORMÁTICOS"
echo "========================================"

# Crear estructura de directorios
mkdir -p proyecto_bioinformático/{datos_crudos,datos_procesados,resultados,scripts,reporte}

echo "Directorios creados correctamente."

# Crear archivos de ejemplo
touch proyecto_bioinformático/datos_crudos/muestra1.fastq
touch proyecto_bioinformático/datos_crudos/muestra2.fastq

touch proyecto_bioinformático/scripts/analisis.sh
touch proyecto_bioinformático/reporte/README.txt

echo "Archivos de ejemplo creados."

# Mostrar estructura completa
echo ""
echo "Estructura del proyecto:"
tree proyecto_bioinformático



