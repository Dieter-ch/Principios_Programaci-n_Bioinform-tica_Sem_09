# Principios_Programacion_Bioinformatica_Sem_09

**Script 1 - Informe del sistema**

Creamos un script llamado `informe_sistema.sh` que incluye:
- Nombre del usuario 
- Fecha y hora actual
- Directoria del trabajo actual
- Uso de disco del directorio actual
- Lista de archivos con detalles
  
La explicación es:

el primer comando usado es `whoami`, con este comando podremos ver el usuario que ejecutando el script.

el segundo comando `date`, con este comando muestra la fecha y hora actual del sistema.

el tercer comando `pwd`, con este comando podemos veer el directorio de trabajo actual.

el cuarto comando `du -sh .`, con este comando calcula cuánto espacio ocupan archivos y 
carpetas.

el quinto comando `ls -lh`, con este comando podemos listar archivos y directorios.

**Script 2 - Organizador de Datos**

Creamos un script llamado `organizador_datos.sh` que incluye:
- Una estructura de carpetas para un proyecto bioinformatico
- Creamos archivos
- Listamos la estructura completa
  
La explicación es:

el primer comando `mkdir -p`, con este comando podemos crear directorios en cadena.

el segundo comando `touch`, nos sirvio para crear archivos usando una ruta.

el tercer comando `tree`, con este comando pudimos mostrar una estructura de arbol de los archivos. 

**Script 3 - Procesador de Secuencias**

Creamos un script llamado `procesador_fasta.sh` que incluye: 
- Un archivo FASTA con organismos
- Contamos el número de secuencias
- Extraimos los identificadores (lineas que comienzan con `>`)
- Calculamos la longitus aproximada de cada secuencia

la explicación es:

el primero comando `cat`, lo usaremos para crear archivo, con `<<EOF` todo lo escrito hasta el siguiente EOF será enviado a cat luego 
direccionaremos con `>` a un archivo llamado `secuencias.fasta`.

el segundo comando `grep -c"^>"`, con grep buscaremos patrones y con -c cuenta coincidencias dentro del texto, ^ es el inicio de línea, > 
es el patron que buscará.

el tercer comando **awk** buscara patrones, pero con **length()** va a contar caracteres (cada caracter es un nucleotido), **id=$0** es donde se va a guardar el nombre de la secuencia, **secuencia=""** vacía la variable para comenzar la siguiente secuencia, **next** dice que pasara a la siguiente línea, **{  secuencia=secuencia $0  }** concatena líneas de ADN, Bloque **END** se ejecuta cuando termian de leer todo el archivo, **print id ": " length(secuencia) " nucleótidos"** imprime la secuencia y el calculo de su longitud.



