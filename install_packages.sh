#!/bin/bash

<<info
this shell script is to downlaod packages
info

#./install_packages.sh package

echo "=======INSTALLING PACKAGE $1 STARTED======="

sudo apt-get update >/dev/null
sudo apt-get install $1 > /dev/null 
echo "=======INSTALLATION COMPLETED======="
