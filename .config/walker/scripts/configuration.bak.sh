#!/bin/bash

OPTIONS="Hyprland\nRofi\nFastFetch\nlf\nWaybar\nKitty\nWalker"

SELECTION=$(echo -e "$OPTIONS" | walker --dmenu -p "Configuration: ")

case "$SELECTION" in
"Hyprland")
  kitty nvim ~/.config/hypr/
  ;;
"Rofi")
  kitty nvim ~/.config/rofi/
  ;;
"FastFetch")
  kitty nvim ~/.config/fastfetch/
  ;;
"lf")
  kitty nvim ~/.config/lf/
  ;;
"Waybar")
  kitty nvim ~/.config/waybar/
  ;;
"Kitty")
  kitty nvim ~/.config/kitty/
  ;;
"Walker")
  kitty nvim ~/.config/walker/
  ;;

esac
