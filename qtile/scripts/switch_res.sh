#!/bin/bash

opt=$(echo -e '1920x1080\n1280x720\n' | rofi -dmenu -p "Select Resolution" -theme ~/.config/rofi/wallpaper/config.rasi)

if [ -z $opt ]; then
  exit
fi

xrandr --output eDP-1 --mode "$opt"
