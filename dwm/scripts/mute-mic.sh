#!/bin/bash
# muteMic

# Arbitrary but unique message tag
msgTag="mymic"

mute="$(amixer get Capture | tail -1 | awk '{print $6}' | sed 's/[^a-z]*//g')"
dunstify -a "muteMic" -u low -h string:x-dunst-stack-tag:$msgTag "Microphone: ${mute}"

# Play the volume changed sound
canberra-gtk-play -i audio-volume-change -d "muteMic"
