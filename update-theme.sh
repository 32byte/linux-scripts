#!/bin/bash
# 
# Updates the theme depending on the daytime
# This runs in a cronjob every hour

current=$(date +"%H")
morning=8
evening=20

if [ "$current" -ge "$morning" ] && [ "$current" -lt "$evening" ]; then
	bash "/home/byte/.scripts/day-theme.sh"
else
	bash "/home/byte/.scripts/night-theme.sh"
fi
