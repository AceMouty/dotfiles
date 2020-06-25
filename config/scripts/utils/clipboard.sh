#!/bin/bash

echo "Select and image"; sleep 1;
dir=$HOME/Pictures/ScreenShots
menu="dmenu -i -l 10"
userSelection=$(ls $dir | $menu)

xclip -selection clipboard -t image/png -i $HOME/Pictures/ScreenShots/$userSelection
# feh $HOME/Pictures/ScreenShots/$userSelection

