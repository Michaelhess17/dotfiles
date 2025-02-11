#!/bin/bash
# /* ---- 💫 https://github.com/JaKooLit 💫 ---- */  ##
# Script for changing blurs on the fly

notif="$HOME/.config/swaync/images/bell.png"

STATE=$(hyprctl -j getoption decoration:blur:size | jq ".int")

if [ "${STATE}" == "20" ]; then
	hyprctl keyword decoration:blur:size 0
	hyprctl keyword decoration:blur:passes 2
 	notify-send -e -u low -i "$notif" " Blur Off"
elif [ "${STATE}" == "0" ]; then
	hyprctl keyword decoration:blur:size 6
	hyprctl keyword decoration:blur:passes 2
  	notify-send -e -u low -i "$notif" " Normal Blur"
else
    hyprctl keyword decoration:blur:size 20
    hyprctl keyword decoration:blur:passes 2
  	notify-send -e -u low -i "$notif" " More Blur"
fi
