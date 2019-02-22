#!/bin/bash
RAMDISK=/media/ramdisk

sudo wireshark -i $RAMDISK/fifopipe0 -i $RAMDISK/fifopipe1 -i $RAMDISK/fifopipe2 
