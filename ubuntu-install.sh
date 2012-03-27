#!/bin/bash

# Añadir el repositorio de jdownloader e instalar.
# TO DO: Añadir una condicional para ver si ya existe el repositorio.
add-apt-repository ppa:jd-team/jdownloader
apt-get update
apt-get install jdownloader

apt-get install mutt urlview irssi

# Instalación de Mendeley desktop.
# Hacer una condicional para descargar la versión adecuada de Mendeley de acuerdo a la arquitectura del sistema.
wget http://www.mendeley.com/repositories/ubuntu/stable/i386/mendeleydesktop-latest
wget http://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i nombre del archivo
# Averiguar cómo instalar un archivo recién descargado, del cual no se sabe el nombre.

# Instalacion de Virtualbox
# Añadir la línea apropiada a /etc/apt/sources.list de acuerdo a la distribución.
deb http://download.virtualbox.org/virtualbox/debian oneiric contrib
deb http://download.virtualbox.org/virtualbox/debian natty contrib
deb http://download.virtualbox.org/virtualbox/debian maverick contrib non-free
deb http://download.virtualbox.org/virtualbox/debian lucid contrib non-free
deb http://download.virtualbox.org/virtualbox/debian karmic contrib non-free
deb http://download.virtualbox.org/virtualbox/debian hardy contrib non-free
deb http://download.virtualbox.org/virtualbox/debian squeeze contrib non-free
deb http://download.virtualbox.org/virtualbox/debian lenny contrib non-free


wget -q http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc -O- | sudo apt-key add -
