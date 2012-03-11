#!/bin/bash



#Respaldar Gmail
python /home/badbit/Dropbox/software/scripts/gyb/gyb.py --email el.badbit@gmail.com --backup --folder /home/badbit/.dropbox-alt/Dropbox/backups/gmail/


HOME=$HOME/.dropbox-alt /usr/bin/dropbox start -i

