#!/bin/bash
# install reqirements
sudo pacman -S --needed hyprland hyprlock hypridle waybar rofi swaync yazi thunar kitty fastfetch
# copy configs
cp -r .config/hypr ~/.config/
cp -r .config/fastfetch ~/.config
cp -r .config/kitty ~/.config
cp -r .config/rofi ~/.config
cp -r .config/swaync ~/.config
cp -r .config/yazi ~/.config
echo "Installation Completed!"
