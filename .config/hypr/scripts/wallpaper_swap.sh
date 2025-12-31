#!/bin/env bash

TARGET_DIR="$HOME/Documents/Wallpapers"

SELECTED_FILE=$(find "$TARGET_DIR" -maxdepth 1 -type f -printf "%f\n" | walker --dmenu -p "Change wallpaper:")

if [[ -n "$SELECTED_FILE" ]]; then

  FULL_PATH="$TARGET_DIR/$SELECTED_FILE"

  echo -e "wallpaper{\n\tmonitor = \n\tpath = $FULL_PATH\n\tfit_mode = cover\n}\nsplash = false" >"$HOME/.config/hypr/hyprpaper.conf"

  hyprctl hyprpaper wallpaper ",$FULL_PATH,cover"
fi
