#!/bin/bash


# apt install for Ubuntu
bash apt-install.sh

dirs=$(find . -type d)

for dir in $dirs
do
	cd $dir && echo "entering $PWD"
  bash install.sh
done