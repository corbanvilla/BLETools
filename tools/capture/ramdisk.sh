#!/bin/bash

# create ramdisk at /media/ramdisk

echo "creating ramdisk"
sudo mkdir -p /media/ramdisk
echo "mounting"
sudo mount -t tmpfs -o size=2048M tmpfs /media/ramdisk
