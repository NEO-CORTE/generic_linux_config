makoctl history |
  sed -E 'N;N;s/^Notification ([0-9]+): ([^\n]+)\n\s+App name: ([^\n]+)\n\s+Urgency: ([^\n]+)$/\1: \2 | App name: \3 | Urgency: \4/' |
  walker --dmenu -p "Notification History: " |
  wl-copy
