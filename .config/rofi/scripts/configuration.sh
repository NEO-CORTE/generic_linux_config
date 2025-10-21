#!/bin/bash

OPTIONS="Hyprland\nRofi\nFastFetch\nlf\nwaybar\nkitty\nElephant\nWalker"

SELECTION=$(echo -e "$OPTIONS" | rofi -dmenu -p "Configuration: ")

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
"waybar")
  kitty nvim ~/.config/waybar/
  ;;
"kitty")
  kitty nvim ~/.config/kitty/
  ;;
"Elephant")
  kitty nvim ~/.config/elephant/
  ;;
"Walker")
  kitty nvim ~/.config/walker/
  ;;
esac
