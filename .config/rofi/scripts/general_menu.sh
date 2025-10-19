#!/bin/bash

OPTIONS="General\nConfiguration\nCalc\nEmoji\nClipboard History\nPower Menu"

SELECTION=$(echo -e "$OPTIONS" | rofi -dmenu -p "All: ")

case "$SELECTION" in
"General")
  rofi -show drun -display-drun "Apps: " -show-icons
  ;;
"Configuration")
  ~/.config/rofi/scripts/configuration.sh
  ;;
"Calc")
  rofi -show calc -modi calc -no-show-match -no-sort -display-calc "Calc: "
  ;;
"Emoji")
  rofi -modi emoji -show emoji -display-emoji "Emoji: "
  ;;
"Clipboard History")
  cliphist list | rofi -dmenu -p "Clipboard History: " | cliphist decode | wl-copy
  ;;
"Power Menu")
  ~/.config/rofi/scripts/power_menu.sh
  ;;
esac
