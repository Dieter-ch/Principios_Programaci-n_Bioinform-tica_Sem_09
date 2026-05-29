#!/bin/bash
# ejercicio3_fasta.sh

# Crear archivo FASTA de ejemplo
cat > secuencias.fasta << 'EOF'
>seq1|Staphylococcus_aureus
ATCGATCGATCGATCGATCGATCGATCGATCGATCGATCGATCG
>seq2|Escherichia_coli
GCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTAGCTA
>seq3|Pseudomonas_aeruginosa
TTACGTTACGTTACGTTACGTTACGTTACGTTACGTTACGTTACG
EOF

echo "Archivo FASTA creado: secuencias.fasta"
echo ""
echo "Número de secuencias:"
grep -c ">" secuencias.fasta

echo ""
echo "Identificadores de secuencias:"
grep ">" secuencias.fasta

echo "" 
echo "Longitud total de archivo:"
wc -c secuencias.fasta
