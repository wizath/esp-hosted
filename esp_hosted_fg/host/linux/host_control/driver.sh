sudo insmod ../host_driver/esp32/esp32_spi.ko resetpin=200
if [ `lsmod | grep esp32 | wc -l` != "0" ]; then
    echo "esp32 module inserted "
    sudo mknod /dev/esps0 c 221 0
    sudo chmod 666 /dev/esps0
    echo "/dev/esps0 device created"
    echo "RPi init successfully completed"
fi
