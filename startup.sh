#! /bin/bash

# panel bar
/home/arthur/Scripts/bar/display.sh &

# touch pad nonsense
synclient VertScrollDelta=-243
synclient HorizScrollDelta=-243
synclient HorizTwoFingerScroll=1
synclient PalmDetect=1

# prep for volume buttons
pulseaudio --start &
volnoti &
