#!/bin/sh

iDIR="$HOME/.config/swaync/images"

while true; do
    battery=$(upower -i "$(upower -e | grep BAT)" | grep -E "percentage" | awk '{print $2}' | tr -d '%')
    if [ "$battery" -le "20" ]; then
        notify-send -e -u low -i "$iDIR/bell.png" "Low Battery"
        sleep 300
    else
        sleep 120
    fi
done
