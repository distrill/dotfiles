#!/usr/bin/bash

Battery() {
	BATTERY_CHARGE=$(acpi | awk '{print $4}' | sed -e 's/,// g' -e 's/%// g')
	BATTERY_STATE=$(acpi | awk '{print $3}' | sed -e 's/,// g')
	if [ "$BATTERY_STATE" = "Charging" ]; then
		CHARGING="+"
	else
		CHARGING=" "
	fi
	echo "    / $BATTERY_CHARGE% /$CHARGING"
}

Wifi() {
	ONOFF=$(iwlist wlp3s0 scanning | grep "Cell 01")
	WORKING=$(iwlist wlp3s0 scanning | grep "Cell 02")
	if [ -z "$ONOFF" ]; then
		echo "--!!--"
	elif [ -z "$WORKING" ]; then
		# SSID=$(iwlist wlp3s0 scanning | grep "ESSID" | sed -e 's/ESSID:"//g' | sed -e 's/"//g' )
		echo -n "$(iwlist wlp3s0 scanning | grep "ESSID" | sed -e 's/ESSID:"//g' | sed -e 's/"//g' )    "
	else
		echo " .... "
	fi
}

Clock() {
	DATE=$(date "+ %l:%M")
	echo -n "$DATE"
}


while true; do
	echo "%{l}$(Battery) %{c}$(Clock) %{r}$(Wifi)"
	sleep 1;
done
