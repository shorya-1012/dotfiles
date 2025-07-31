#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"
wallpapers=$(ls "$WALLPAPER_DIR")

# Optional: Get current wallpaper name from nitrogen or swww
current_wallpaper_name=$(basename "$(find ~/.config/nitrogen/bg-saved.cfg -type f -exec grep -m1 'file=' {} \; | cut -d'=' -f2 2>/dev/null)")

rofi_list=""
while IFS= read -r a; do
    filename=$(basename "$a")
    if [[ "$filename" == "$current_wallpaper_name" ]]; then
        rofi_list+="${filename} (current)\0icon\x1f$WALLPAPER_DIR/$filename\n"
    else
        rofi_list+="${filename}\0icon\x1f$WALLPAPER_DIR/$filename\n"
    fi
done <<<"$wallpapers"

selected_wallpaper=$(echo -e "$rofi_list" | rofi -dmenu -p "Select Wallpaper:" -theme "$HOME/.config/rofi/wallpaper/config.rasi" -markup-rows)

if [ -z "$selected_wallpaper" ]; then
  exit 0
fi

# Remove "(current)" if it's there
selected_wallpaper=$(echo "$selected_wallpaper" | sed 's/ (current)//g')

active_win=$(xdotool getactivewindow)

# Fade out: set opacity to 0
xprop -id "$active_win" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0x00000000
sleep 0.2

nitrogen --set-zoom-fill "$WALLPAPER_DIR/$selected_wallpaper" --save

# Fade back in
xprop -id "$active_win" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY 0xffffffff

