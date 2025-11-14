#!/bin/bash
choice="$(find ~/.dotfiles/.config/ -maxdepth 1 -mindepth 1 -type d | sort -n | walker --dmenu -p "Configuration: ")"
[ -n "${choice}" ] && kitty nvim -c "cd ${choice}"
