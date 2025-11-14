#!/bin/bash

OPTIONS="General\nConfiguration\nArch Linux Packages\nApps\nNotifications\nClipboard History\nPower Menu"

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
"Apps")
  ~/.config/walker/scripts/app_locations.sh
  ;;
"Notifications")
  ~/.config/walker/scripts/mako.sh
  ;;
"Clipboard History")
  walker -m clipboard
  ;;
"Power Menu")
  ~/.config/walker/scripts/power_menu.sh
  ;;
esac
