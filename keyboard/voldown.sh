#! /bin/bash

volume=`amixer | grep "Left: Playback" | awk '{print $5}' | sed -e 's/\[//g' -e 's/\]//g' -e's/\%//g'`
if (( "$volume" >= 7 ))
    then
    volume=$(($volume - 7))
    echo "$(amixer set Master $volume%)"
    echo "$(volnoti-show $volume)"
else
    echo "$(amixer set Master 0%)"
    echo "$(volnoti-show -m)"
fi
