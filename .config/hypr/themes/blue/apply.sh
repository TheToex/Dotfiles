#!/bin/bash

THEME_DIR="$(dirname "$(realpath "$0")")"
THEMES="$HOME/.config/hypr/themes"

# set current
ln -sfn "$THEME_DIR" "$THEMES/current"

# wallpaper
swww img --transition-type grow --transition-duration 1 --transition-fps 60 ~/.config/hypr/themes/blue/wall.jpg

# waybar
pkill waybar
waybar -c "$THEME_DIR/waybar.jsonc" \
       -s "$THEME_DIR/waybar.css" &

# reload hyprland
hyprctl reload
