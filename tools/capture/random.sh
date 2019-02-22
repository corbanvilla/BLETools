#!/bin/bash

MACADDR="$(cat macaddr)"

white true; do
	RAND="$(openssl rand -hex 3)"
	PARAMS="--adapter=hci1 --device=$MACCADDR --handle=0x000b --value=56"$RAND"fff0aa --char-write-req"
	gatttool $PARAMS
	sleep 2
done
