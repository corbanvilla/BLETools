#!/bin/bash

# create ramdisk at /media/ramdisk

echo "creating ramdisk"
sudo mkdir -p /media/ramdisk
echo "mounting"
sudo mount -t tmpfs -o size=2048M tmpfs /media/ramdisk

echo "telling ubertooth to send data to pipes"
ubertooth-btle -U0 -A 37 -f -c $RAMDISK/fifopipe0 &
ubertooth-btle -U1 -A 38 -f -c $RAMDISK/fifopipe1 &
ubertooth-btle -U2 -A 39 -f -c $RAMDISK/fifopipe2 &
