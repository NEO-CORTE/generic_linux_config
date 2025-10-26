#!/bin/bash

OPTIONS="General\nConfiguration\nArch Linux Packages\nClipboard History\nPower Menu"

SELECTION=$(echo -e "$OPTIONS" | walker --dmenu -p "All: ")

case "$SELECTION" in
"General")
  walker
  ;;
"Configuration")
  ~/.config/walker/scripts/configuration.sh
  ;;
"Arch Linux Packages")
  walker -m archlinuxpkgs
  ;;
"Clipboard History")
  walker -m clipboard
  ;;
"Power Menu")
  ~/.config/walker/scripts/power_menu.sh
  ;;
esac
