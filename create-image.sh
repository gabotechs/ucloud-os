#!/usr/bin/env bash

if [[ "$EUID" -ne 0 ]]
  then echo "Please run as root"
  exit
fi

fdisk -l

echo "type de disk1 you want to clone"
read device

dd if=/dev/$device of=ucloud.img bs=1M status=progress

wget https://raw.githubusercontent.com/Drewsif/PiShrink/master/pishrink.sh
chmod +x pishrink.sh

./pishrink.sh ucloud.img