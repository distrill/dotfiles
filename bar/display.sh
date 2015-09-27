#! /bin/bash
source "/home/arthur/Scripts/scripts_config"

echo "" | lemonbar -g $UNDER_PANEL_GEO -B $BORDER_DARK -p &
/home/arthur/Scripts/bar/bar.sh | lemonbar -g $PANEL_GEO -B $BG_COLOR -f $PANEL_FONT -o -2 &
