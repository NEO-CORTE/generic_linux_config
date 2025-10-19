#!/bin/bash

OPTIONS="General\nConfiguration\nClipboard History\nPower Menu"

SELECTION=$(echo -e "$OPTIONS" | walker --dmenu -p "All: ")

case "$SELECTION" in
"General")
  walker
  ;;
"Configuration")
  ~/.config/walker/scripts/configuration.sh
  ;;
"Clipboard History")
  cliphist list | walker --dmenu | cliphist decode | wl-copy
  ;;
"Power Menu")
  ~/.config/walker/scripts/power_menu.sh
  ;;
esac
