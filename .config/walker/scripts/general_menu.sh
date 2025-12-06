#!/bin/env bash

OPTIONS="General\nConfiguration\nWaybar Color Scheme\nWallpaper\nArch Linux Packages\nApps\nNotifications\nBluetooth\nClipboard History\nPower Menu"

SELECTION=$(echo -e "$OPTIONS" | walker --dmenu -p "All: ")

case "$SELECTION" in
"General")
  walker
  ;;
"Configuration")
  ~/.config/walker/scripts/configuration.sh
  ;;
"Waybar Color Scheme")
  ~/.config/waybar/scripts/swap.sh
  ;;
"Wallpaper")
  ~/.config/hypr/scripts/wallpaper_swap.sh
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
"Bluetooth")
  walker -m bluetooth
  ;;
"Clipboard History")
  walker -m clipboard
  ;;
"Power Menu")
  ~/.config/walker/scripts/power_menu.sh
  ;;
esac
