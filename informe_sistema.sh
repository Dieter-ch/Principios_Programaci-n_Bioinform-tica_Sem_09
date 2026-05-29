#!/bin/bash

echo "==========================="
echo "   INFORME DEL SISTEMA"
echo "==========================="

echo "Usuario actual:"
whoami

echo ""
echo "Fecha y hora del sistema:"
date

echo ""
echo "Directorio de trabajo actual:"
pwd

echo ""
echo "Uso de disco del directorio actual:"
du -sh .

echo ""
echo "Lista de archivos con detalles:"
ls -lh

