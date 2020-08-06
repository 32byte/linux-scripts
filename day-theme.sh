#!/bin/bash
#
# Changes to the day-theme

# Set background & brighness
feh --bg-fill ~/Pictures/day-bg.jpg
xbacklight -set 45

# Update .Xressources
echo "#include \"$HOME/.Xthemes/dracula\"" > ~/.Xresources
xrdb ~/.Xresources

# Update the alacritty color
cat ~/.config/alacritty/alacritty_nocolor.yml > ~/.config/alacritty/alacritty.yml
cat ~/.config/alacritty/dracula.yml >> ~/.config/alacritty/alacritty.yml
