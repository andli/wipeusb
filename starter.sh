#!/bin/sh

echo '' >> /var/log/wipeusb
echo 'Starter script launching wipeusb.sh' >> /var/log/wipeusb
echo /usr/local/bin/wipeusb.sh "$1" | at now
