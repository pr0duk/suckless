#!/bin/bash
# changeBrightness

# Arbitrary but unique message tag
msgTag="mybrightness"

# Query brightnessctl for the brightness
brightness="$(brightnessctl | tail -3 | head -1 | awk '{print $4}' | sed 's/[^0-9]*//g')"
dunstify -a "changeBrightness" -u low -i audio-volume-high -h string:x-dunst-stack-tag:$msgTag \
    -h int:value:"$brightness" "Brightness: ${brightness}%"

# Play the volume changed brightness
canberra-gtk-play -i audio-volume-change -d "changeBrightness"
