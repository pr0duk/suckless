#!/bin/bash
# dmenu_findfile.sh for dmenu.
# Find every file in your $HOME
# author: Diego Rucci (dragonauta) <dragonauta.x@gmail.com>
# It shows dmenu with a width of 600px, 30 lines of text on top of screen.
# Idea taken from Chrysostomus
# https://github.com/Chrysostomus/bspwm-scripts/blob/master/bin/finder
# Requires: dmenu, xdg-utils
# 
# You can customize:
# Font
FN='Exo2:Regular:size=10'
# Background Commands
NB='#3C403E'
# Foreground Commands
NF='#d7d7d7'
# Background Prompt
SB='#16A085'
# Foreground Prompt
SF='#FFF'
#
# Regex \( ! -regex '.*/\..*' \) not show dot files.
# -type f show only files (not folders)
find ~/ \( ! -regex '.*/\..*' \) -type f | sed 's/ /\\ /g' | sort -f | dmenu | xargs xdg-open
