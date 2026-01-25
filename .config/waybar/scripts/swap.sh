#!/bin/env bash

WAYBAR_DIR="$HOME/.config/waybar"

TARGET_DIR="$WAYBAR_DIR/colorSchemes"

SELECTED_FILE=$(find "$TARGET_DIR" -maxdepth 1 -type f -printf "%f\n" | walker --dmenu -p "Open File:")

if [[ -n "$SELECTED_FILE" ]]; then

  FULL_PATH="$TARGET_DIR/$SELECTED_FILE"

  cat "$FULL_PATH" "$HOME/.config/waybar/styling.css" >/dev/shm/waybar/style.css

  cat "$WAYBAR_DIR/config.jsonc" >/dev/shm/waybar/waybar.jsonc

  echo -e "#!/bin/env bash\nexport WAYBAR_COLOR_SCHEME=\"$FULL_PATH\"" >"$HOME/.config/waybar/scripts/color.env"

  pkill -SIGUSR2 waybar
fi
