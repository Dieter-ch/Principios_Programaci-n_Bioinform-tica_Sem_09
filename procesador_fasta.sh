
#!/bin/bash

echo "==================================="
echo "  PROCESADOR DE SECUENCIAS FASTA"
echo "==================================="

# Crear archivo FASTA
cat <<EOF > secuencias.fasta
>Homo_sapiens
ATGCGTACGTAGCTAGCTAGCTAGCTAGCTA
>Mus_musculus
ATGCGTAGCTAGCTAACGATCGATCGATCGA
>Arabidopsis_thaliana
ATGCGTACGATCGATCGTAGCTAGCATCGATCG

EOF

echo "Archivo FASTA generado."

echo ""
echo "Número de secuencias:"
grep -c "^>" secuencias.fasta

echo ""
echo "Identificadores encontrados:"
grep "^>" secuencias.fasta

echo ""
echo "Longitud aproximada de cada secuencia:"

awk '
/^>/ {
    if (secuencia != "") {
        print id ": " length(secuencia) " nucleótidos"
    }
    id=$0
    secuencia=""
    next
}
{
    secuencia=secuencia $0
}
END {
    print id ": " length(secuencia) " nucleótidos"
}
' secuencias.fasta

