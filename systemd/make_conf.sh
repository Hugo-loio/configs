#!/bin/sh

#if [ $EUID -ne 0 ]; then
   echo "This script will need root permisions" 
#   exit 1
#fi

sudo cp $XDG_CONFIG_HOME/systemd/logind.conf /etc/systemd/logind.conf
