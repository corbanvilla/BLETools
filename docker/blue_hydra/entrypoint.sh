#!/bin/sh

# enable DBUS
service dbus start

# start bluetoothd service in background
bluetoothd &

# start blue_hydra
/blue_hydra/bin/blue_hydra
