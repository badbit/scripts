#! /bin/bash
# Script para guardar los listados de archivos de un disco duro externo,
# un volumen comprimido de fotografías y una unidad USB.

# Directorio de Dropbox en dónde guardar los listados.
DROPBOX=/home/badbit/Dropbox/backups/filelist

# Directorios a listar.
DISCO_DURO=/media/Portatil
ALBUM=/media/truecrypt1

function listar {
	if [ "$(ls -A $1)" ]; then
		echo "Listando archivos de $1"
		date > ~/$2.txt
        tree $1 >> ~/$2.txt
		ls -ARl $1 >> ~/$2.txt
		echo "Comprimiendo listado."
		gzip ~/$2.txt
		echo "Moviendo listado a Dropbox"
		mv ~/$2.txt.gz $DROPBOX
		#echo "Borrando residuos"
		#rm ~/$2.txt
	else
		echo "$1 no está montado"
	fi
}

listar $DISCO_DURO "portatil"
listar $ALBUM "album"

exit
