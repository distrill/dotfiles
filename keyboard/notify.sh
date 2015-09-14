#! /bin/bash

killall dzen2
echo " " | dzen2 -w 268 -h 236 -x 1146 -y 992 -bg "#000000" -o 50 -p 1 &
echo "$1" | dzen2 -w 260 -h 220 -x 1150 -y 1000 -fg "#000000" -bg "#e6e6e6" -o 85 -fn "-terminus-*-*-*-*-*-*-320-*-*-*-*-*-*" -p 1 &
