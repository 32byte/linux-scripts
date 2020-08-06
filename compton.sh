#!/bin/bash

# restart compton
killall picom
sleep 1
picom --config ~/.config/compton.conf
