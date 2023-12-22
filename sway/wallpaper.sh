#!/bin/bash

# List wallpapers in a directory
wallpaper_dir="/home/khaimed/Pictures/Wallpaper"
selected_wallpaper=$(find "$wallpaper_dir" -type f | rofi -dmenu -p "Select Wallpaper" -i)

# Set the selected wallpaper
if [ -n "$selected_wallpaper" ]; then
    swaymsg "output * bg $selected_wallpaper fill"
fi
