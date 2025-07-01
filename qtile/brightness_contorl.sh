#!/bin/bash

INIT_BRIGHTNESS_LEVEL=$(brightnessctl | grep -o '[0-9]\+%' | tr -d %)
echo $INIT_BRIGHTNESS_LEVEL

if [ "$1" == "up" ]; then
 brightnessctl set 10%+
elif [ "$1" == "down" -a "$INIT_BRIGHTNESS_LEVEL" -gt 10 ]; then
 brightnessctl set 10%-
fi

INIT_BRIGHTNESS_LEVEL=$(brightnessctl | grep -o '[0-9]\+%' | tr -d %)
dunstify -a "Brightness" -r 9993 -u low -h int:value:"$INIT_BRIGHTNESS_LEVEL"  "Brightness"
