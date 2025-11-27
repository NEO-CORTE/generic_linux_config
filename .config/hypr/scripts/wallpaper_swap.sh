#!/bin/env bash

TARGET_DIR="$HOME/Documents/Wallpapers"

SELECTED_FILE=$(find "$TARGET_DIR" -maxdepth 1 -type f -printf "%f\n" | walker --dmenu -p "Change wallpaper:")

if [[ -n "$SELECTED_FILE" ]]; then

  FULL_PATH="$TARGET_DIR/$SELECTED_FILE"

  echo -e "preload = $FULL_PATH\nwallpaper = ,$FULL_PATH" >"$HOME/.config/hypr/hyprpaper.conf"

  hyprctl hyprpaper reload ",$FULL_PATH"
fi
