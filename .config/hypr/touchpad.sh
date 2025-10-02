#!/bin/bash

CONF="$HOME/.dotfiles/.config/hypr/hyprland.conf"

# Safely toggle the touchpad enabled setting
sed -i '/device {/,/}/ {
  /name = elan1205:00-04f3:30e9-touchpad/,/}/ {
    s/enabled = true/enabled = false/ # Try to change true to false
    t                               # If successful, skip to end of block
    s/enabled = false/enabled = true/ # Otherwise, change false to true
  }
}' "$CONF"


echo $?
echo $CONF

# Reload Hyprland config
hyprctl reload
