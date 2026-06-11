#!/bin/bash
chosen=$(printf "Blue\nGray\nPurple" | rofi -dmenu -theme-str 'mainbox { children: [listview]; }' -config ~/.config/hypr/themes/current/rofi/config.rasi -no-show-icons -no-fixed-num-lines -p "")

case "$chosen" in
    "Blue")
        ~/.config/hypr/themes/blue/apply.sh
        ;;
    "Gray")
        ~/.config/hypr/themes/gray/apply.sh
        ;;
    "Purple")
        ~/.config/hypr/themes/purple/apply.sh
        ;;
esac
