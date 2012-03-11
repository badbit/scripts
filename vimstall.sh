#! /bin/bash
# Script para instalar automáticamente mis plugins de vim.
# Requiere tener Github configurado.

echo "Clonando el repositorio principal."
git clone git://github.com/badbit/dotvim.git ~/.vim
echo "Vínculo simbólico para el archivo rc."
ln -s ~/.vim/vimrc ~/.vimrc
