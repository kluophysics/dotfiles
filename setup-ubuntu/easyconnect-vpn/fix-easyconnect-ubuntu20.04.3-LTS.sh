#!/bin/bash

easyconnect_path=/usr/share/sangfor/EasyConnect

debs="libpangoft2-1.0-0_1.40.14-1ubuntu0.1_amd64.deb  libpangocairo-1.0-0_1.40.14-1ubuntu0.1_amd64.deb libpango-1.0-0_1.40.14-1ubuntu0.1_amd64.deb"

address="http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0"
 
#debs=$(find . -name "libpango*.deb")


mkdir -p work

for deb in $debs
do
  if ! [ -f $deb ]; then
  # wget http://archive.ubuntu.com/ubuntu/pool/main/p/pango1.0/$deb 
  # download required older version pango related library for EasyConnect
  wget $address/$deb  && echo "downloaded deb file $deb"
	fi

  #sudo dpkg -X $deb $easyconnect_path #/usr/share/sangfor/EasyConnect
  dpkg -X $deb  work
done 

sudo mv ./work/usr/lib/x86_64-linux-gnu/lib* $easyconnect_path

rm -rf work

