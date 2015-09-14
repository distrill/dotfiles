#! /bin/bash

toggle=`amixer | grep "Left: Playback" | awk '{print $6}'`
if [ $toggle = "[off]" ]
    then
    volume=`amixer | grep "Left: Playback" | awk '{print $5}' | sed -e 's/\[//g' -e 's/\]//g' -e's/\%//g'`
    echo "$(amixer set Master unmute)"
    # echo "$(/home/arthur/Development/scripts/keyboard/notify.sh 'v -x-')"
    echo "$(volnoti-show $volume)"
else
    echo "$(amixer set Master mute)"
    echo "$(volnoti-show -m)"
    # echo "$(/home/arthur/Development/scripts/keyboard/notify.sh 'v -!-')"
fi
