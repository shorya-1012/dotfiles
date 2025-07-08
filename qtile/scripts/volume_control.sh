#!/bin/bash

# Exit immediately if a command fails
set -e

if [ "$1" == "up" ]; then
    wpctl set-volume -l 1.0 @DEFAULT_AUDIO_SINK@ 5%+
elif [ "$1" == "down" ]; then
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
elif [ "$1" == "mute" ]; then
    wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
fi

# Get volume and mute status
VOLUME=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{printf "%.0f", $2 * 100}')
IS_MUTED=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | grep -q MUTED && echo " 🔇 Muted" || echo "")

# Send notification
dunstify -a "Volume" -r 91190 -u low -h int:value:"$VOLUME"  "Volume $IS_MUTED"

