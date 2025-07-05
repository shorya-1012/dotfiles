#!/bin/bash

option=$(printf "⏻ Poweroff\n🔄 Reboot\n💤 Sleep\n" | rofi -dmenu -i -p "Power Menu")

case "$option" in
  "⏻ Poweroff") systemctl poweroff ;;
  "🔄 Reboot") systemctl reboot ;;
  "💤 Sleep" ) systemctl suspend ;;
esac
