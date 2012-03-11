#! /bin/bash


function delethumbs {
	find $1 -name Thumbs.db -exec rm {} \;
}

delethumbs /home/badbit/Dropbox
delethumbs /media/Portatil
delethumbs /media/truecrypt1
