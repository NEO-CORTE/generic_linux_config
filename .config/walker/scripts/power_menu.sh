#!/bin/env bash

OPTIONS="Shutdown\nReboot\nSuspend\nLogout"

SELECTION=$(echo -e "$OPTIONS" | walker --dmenu -p "Power Menu: ")

case "$SELECTION" in
"Shutdown")
  systemctl poweroff
  ;;
"Reboot")
  systemctl reboot
  ;;
"Suspend")
  systemctl suspend
  ;;
"Logout")
  # Command to exit Hyprland
  hyprctl dispatch exit
  ;;
esac
