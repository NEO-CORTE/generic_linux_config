#!/bin/bash

OPTIONS="General\nConfiguration\nPower Menu"

SELECTION=$(echo -e "$OPTIONS" | rofi -dmenu -p "All")

case "$SELECTION" in
"General")
  rofi -show drun -show-icons
  ;;
"Configuration")
  ~/.config/rofi/scripts/configuration.sh
  ;;
"Power Menu")
  ~/.config/rofi/scripts/power_menu.sh
  ;;
esac
