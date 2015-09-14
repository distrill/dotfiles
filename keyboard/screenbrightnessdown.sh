#! /bin/bash

bright=`cat /sys/class/backlight/intel_backlight/brightness`
if (( "$bright" >= 100 ))
    then
    bright=$(($bright - 100))
    sudo bash -c "echo $bright > /sys/class/backlight/intel_backlight/brightness"
else
    sudo bash -c "echo 0 > /sys/class/backlight/intel_backlight/brightness"
fi
