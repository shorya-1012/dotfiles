#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"

wallpaper=$(ls "$WALLPAPER_DIR" | rofi -dmenu -theme ~/.dotfiles/rofi/wallpaper/config.rasi )

if [ -z "$wallpaper" ]; then
  exit
fi

active_win=$(xdotool getactivewindow)

# Fade out: set opacity to 0
xprop -id "$active_win" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x00000000
sleep 0.2

nitrogen --set-zoom-fill "$WALLPAPER_DIR/$wallpaper" --save

# picom-trans -w $(xdotool getactivewindow) --set-opacity 1.0
xprop -id "$active_win" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xffffffff
