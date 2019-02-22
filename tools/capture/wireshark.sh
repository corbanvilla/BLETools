#!/bin/bash
RAMDISK=/media/ramdisk

wireshark -i $RAMDISK/fifopipe0 -i $RAMDISK/fifopipe1 -i $RAMDISK/fifopipe2 
