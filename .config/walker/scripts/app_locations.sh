#!/bin/bash

OPTIONS="Local\nGlobal"

SELECTION=$(echo -e "$OPTIONS" | walker --dmenu -p "Apps: ")

case "$SELECTION" in
"Local")
  kitty nvim -c "cd ~/.local/share/applications/"
  ;;
"Global")
  kitty nvim -c "cd /usr/share/applications/"
  ;;
esac
