#!/bin/bash
#
# Changes to the night-theme

# Set background & brighness
feh --bg-fill ~/Pictures/night-bg.jpg
xbacklight -set 10

# Update .Xressources
echo "#include \"~/.Xthemes/citydark\"" > ~/.Xresources
xrdb ~/.Xresources

# Update the alacritty color
cat ~/.config/alacritty/alacritty_nocolor.yml > ~/.config/alacritty/alacritty.yml
cat ~/.config/alacritty/citydark.yml >> ~/.config/alacritty/alacritty.yml
