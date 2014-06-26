#! /bin/bash
setxkbmap -option 'ctrl:nocaps'
xrandr --output DFP9 --off && xrandr --output DFP9 --auto --right-of DFP5
xrandr --output DFP1 --off && xrandr --output DFP1 --auto --left-of DFP5
