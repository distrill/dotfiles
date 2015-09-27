#! /bin/bash

number=$(($RANDOM % 3))
echo $number
if [ $number -eq 0 ]; then
	location=US_Seattle.conf
elif [ $number -eq 1 ]; then
	location=US_California.conf
else
	location=US_New_York_City.conf
fi
#echo "what"
openvpn --config /etc/openvpn/$location

