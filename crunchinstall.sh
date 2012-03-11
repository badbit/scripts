#!/bin/bash

apt-get update
apt-get upgrade
apt-get install byobu nethack-console irssi irssi-scripts vim-gnome pidgin finch lyx centerim guake unrar keepassx conduit git

git clone git://github.com/badbit/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
