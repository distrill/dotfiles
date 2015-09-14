#! /bin/bash

bright=`cat /sys/class/leds/smc::kbd_backlight/brightness`
if (( "$bright" >= 15 ))
    then
    bright=$(($bright - 15))
    sudo bash -c "echo $bright > /sys/class/leds/smc::kbd_backlight/brightness"
else
    sudo bash -c "echo 0 > /sys/class/leds/smc::kbd_backlight/brightness"
fi
