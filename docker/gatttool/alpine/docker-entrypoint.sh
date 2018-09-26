#!/bin/sh

if [[ -z "${MACADDR}" ]]; then
	echo "No mac address variable passed. Make sure you pass are passing a mac address."
	exit 1
fi

if [[ -z "${INTERFACE}" ]]; then
	echo "No interface variable passed. Run hciconfig and find an interface to pass"
	exit 1
fi

if [[ -z "${HANDLE}" ]]; then
	echo "No handle variable passed."
	exit 1
fi

if [[ -z "${VALUE}" ]]; then
	echo "No value variable passed"
	exit 1
fi

echo "Attemping to connect to ${MACADDR}"
echo "This will timeout in 10 seconds"

timeout -t 10 gatttool --adapter=${INTERFACE} --device=${MACADDR} --handle=${HANDLE} --value=${VALUE} --char-write-req

#check if previous command worked
if [ $? != 0 ]; then
	echo "Gatttool was not able to connect :/"
else
	echo "Gatttool successfully connected"
fi
