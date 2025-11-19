#!/bin/env bash

mkdir -p /dev/shm/waybar/

ENVFILE=/home/amaru/.config/waybar/scripts/color.env
DEFAULT_COLORS="/home/amaru/.config/waybar/colorSchemes/pink.css"

if [ -f "$ENVFILE" ]; then
  source "$ENVFILE"
  WAYBAR_COLOR_SCHEME=${WAYBAR_COLOR_SCHEME:-DEFAULT_COLORS}
else
  WAYBAR_COLOR_SCHEME="$DEFAULT_COLORS"
fi

export WAYBAR_COLOR_SCHEME

cat /home/amaru/.config/waybar/config.jsonc >/dev/shm/waybar/waybar.jsonc
cat "$WAYBAR_COLOR_SCHEME" /home/amaru/.config/waybar/styling.css >/dev/shm/waybar/style.css
