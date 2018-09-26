#!/bin/sh
MACADDR="aa:aa:aa:aa:aa:aa"
INTERFACE="hci1"
HANDLE="0x000b"
VALUE="56aaaaaafff0aa"

echo "Attemping to connect to $MACADDR"
echo "This will timeout in 10 seconds"

timeout 10 gatttool --adapter=$INTERFACE --device=$MACADDR --handle=$HANDLE --value=$VALUE --char-write-req

#check if previous command worked
if [ $? != 0 ]; then
	echo "Gatttool was not able to connect :/"
else
	echo "Gatttool successfully connected"
fi
