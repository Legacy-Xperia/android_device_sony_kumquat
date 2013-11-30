# HW configuration file for kumquat
# Touch FW loader
cyttsp_fwloader -dev /sys/bus/spi/devices/spi9.0 -fw /etc/firmware/ttsp_fw.hex

# Audio jack configuration
dev=/sys/devices/platform/simple_remote.0
echo 0,301,1901 > $dev/accessory_min_vals
echo 300,1900  > $dev/accessory_max_vals
echo 0,51,251,511,851 > $dev/button_min_vals
echo 50,250,510,850,5000  > $dev/button_max_vals

# Proximity sensor configuration
dev=/sys/bus/i2c/devices/2-0054/
val_cycle=2
val_nburst=0
val_freq=2
val_threshold=5
val_filter=0

echo $val_cycle > $dev/cycle    # Duration Cycle. Valid range is 0 - 3.
echo $val_nburst > $dev/nburst  # Numb er of pulses in burst. Valid range is 0 - 15.
echo $val_freq > $dev/freq      # Burst frequency. Valid range is 0 - 3.

if `ls /data/etc/threshold > /dev/null`; then
    cat /data/etc/threshold > $dev/threshold # Use value from calibration
    rm /data/etc/threshold # Remove temp file
else # No value from calibration, use default value
    echo $val_threshold > $dev/threshold # sensor threshold. Valid range is 0 - 15 (0.12V - 0.87V)
fi

if `ls /data/etc/filter > /dev/null`; then
    cat /data/etc/filter > $dev/filter # Use value from calibration
    rm /data/etc/filter # Remove temp file
else # No value from calibration, use default value
    echo $val_filter > $dev/filter  # RFilter. Valid range is 0 - 3.
fi
