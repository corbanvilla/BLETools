#!/bin/bash

# Store pipes in ramdisk 
RAMDISK=/media/ramdisk

echo "creating pipes"
mkfifo $RAMDISK/fifopipe0
mkfifo $RAMDISK/fifopipe1
mkfifo $RAMDISK/fifopipe2
