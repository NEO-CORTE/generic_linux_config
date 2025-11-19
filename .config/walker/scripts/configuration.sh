#!/bin/env bash

TARGET_DIR="$HOME/.dotfiles/.config/"

SELECTED_FILE=$(find "$TARGET_DIR" -maxdepth 1 -mindepth 1 -type d -printf "%f\n" | sort -n | walker --dmenu -p "Open Config Dir:")

if [[ -n "$SELECTED_FILE" ]]; then

  FULL_PATH="$TARGET_DIR/$SELECTED_FILE"

  kitty nvim -c "cd ${FULL_PATH}"

fi
