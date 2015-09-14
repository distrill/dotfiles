source "/home/arthur/Scripts/scripts_config"

# panel bar
echo "" | lemonbar -g $UNDER_PANEL_GEO -B $BORDER_DARK -p &
/home/arthur/Scripts/bar/bar.sh | lemonbar -g $PANEL_GEO -B $BG_COLOR -f $PANEL_FONT -o -2 &

# touch pad nonsense
synclient VertScrollDelta=-243
synclient HorizScrollDelta=-243
synclient HorizTwoFingerScroll=1

# prep for volume buttons
volnoti &

# let intellij know about bspwm
wmname LG3D &
