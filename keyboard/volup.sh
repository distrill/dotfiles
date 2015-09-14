#! /bin/bash

volume=`amixer | grep "Left: Playback" | awk '{print $5}' | sed -e 's/\[//g' -e 's/\]//g' -e's/\%//g'`
toggle=`amixer | grep "Left: Playback" | awk '{print $6}'`

if [ $toggle = "[off]" ]
    then
    echo "$(amixer set Master unmute)"
fi

if (( "$volume" <= 93 ))
    then
    volume=$(($volume + 7))
    echo "$(amixer set Master $volume%)"
else
    echo "$(amixer set Master 100%)"
fi

echo "$(volnoti-show $volume)"
