#!/bin/bash

#Anadir a badbit a la lista de sudoers, si no se encuentra en ella.
check="badbit ALL=(ALL) ALL"; [[ -n $(grep "^$check\$" /etc/sudoers) ]] && echo "Ya eres un sudoer" || check "$check" >> /etc/sudoers

#Actualizar el sistema e instalar los paquetes necesarios.
apt-get update
apt-get upgrade
apt-get install vim byobu nethack-console lyx finch irssi git git-core git-doc lynx ntp moc

#Quitar el login grafico (no sirve).
update-rc.d -f gdm remove

#Cambiar la letra de la consola.
read -p "Configuracion de letra de la consola. Selecciona VGA."
dpkg-reconfigure console-setup

#Configuracion de github
if [ -d /home/badbit/.ssh ]; then
	su badbit
	ssh-keyen -t rsa -C "el.badbit@gmail.com"
if
su badbit
cat /home/badbit/.ssh/id_rsa.pub
read -p "Copia la clave y anadela a github."
git config --global user.name "Miguel Lozano"
git config --global user.email "el.badbit@gmail.com"
git config --global github.user badbit
git config --global github.token 81c5e5b9d427da69c617f8560d1a9fd2 

#Configuracion de vim.
git clone git://github.com/badbit/dotvim.git /home/badbit/.vim
ln -s /home/badbit/.vim/vimrc /home/badbit/.vimrc
