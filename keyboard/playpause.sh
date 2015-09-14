#! /bin/bash

status=`mpc | grep '\[' | awk '{print $1}' | sed -e 's/\[//' -e 's/\]//'`
if [ $status = "playing" ]
    then
    echo "$(mpc pause)"
else
    echo "$(mpc play)"
fi
