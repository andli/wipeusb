#!/bin/sh

dt=$(date)
echo $dt Wiping drive $1 >> /var/log/wipeusb
blinkstick --pulse ff9f00 --repeats 999999 &

# main script
echo Wiping $1 with random this will take a while >> /var/log/wipeusb
sudo dd if=/dev/urandom of=/dev/$1 bs=4096 conv=fsync
#sudo dd if=/dev/zero of=/dev/$1 bs=4096 conv=fsync

echo Creating partition on $1 USB drive >> /var/log/wipeusb
(echo o; echo n; echo p; echo 1; echo; echo; echo w;) | sudo fdisk /dev/$1

echo Formatting drive $1 FAT32 >> /var/log/wipeusb
sudo mkfs.vfat /dev/$1 -I

echo Detaching $1 >> /var/log/wipeusb
sudo udisks --detach /dev/$1

kill $!
blinkstick --set-color=green

dt=$(date)
echo $dt USB drive $1 wiped, formatted and ejected >> /var/log/wipeusb
echo >> /var/log/wipeusb
