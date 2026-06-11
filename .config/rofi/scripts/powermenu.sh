#!/bin/bash

chosen=$(printf " Shutdown\n󰜉 Reboot\n󰍃 Logout\n󰤄 Suspend" | rofi -dmenu -theme-str 'mainbox { children: [listview]; }' -config ~/.config/hypr/themes/current/rofi/config.rasi  -no-show-icons -no-fixed-num-lines -p "")

case "$chosen" in
    " Shutdown")
        systemctl poweroff
        ;;
    "󰜉 Reboot")
        systemctl reboot
        ;;
    "󰍃 Logout")
        hyprctl dispatch exit
        ;;
    "󰤄 Suspend")
        systemctl suspend
        ;;
esac
