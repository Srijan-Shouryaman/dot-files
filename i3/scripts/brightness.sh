#!/bin/bash
# $1 = +10% or 10%-
brightnessctl set "$1"
# get current brightness
brightness=$(brightnessctl get)
max=$(brightnessctl max)
percent=$((brightness * 100 / max))
# show notification
notify-send -t 800 "Brightness" "$percent%" -h int:value:$percent -h string:fgcolor:#FFFF00 -h string:icon-name:display-brightness
