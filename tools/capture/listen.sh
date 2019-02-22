RAMDISK=/media/ramdisk

echo "telling ubertooths to send data to pipes"
sudo ubertooth-btle -U0 -A 37 -f -c $RAMDISK/fifopipe0 & 
sudo ubertooth-btle -U1 -A 38 -f -c $RAMDISK/fifopipe1 &
sudo ubertooth-btle -U2 -A 39 -f -c $RAMDISK/fifopipe2 &
