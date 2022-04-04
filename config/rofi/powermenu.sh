#!/bin/bash
                                                            
# .-----.-----.--.--.--.-----.----.--------.-----.-----.--.--.
# |  _  |  _  |  |  |  |  -__|   _|        |  -__|     |  |  |
# |   __|_____|________|_____|__| |__|__|__|_____|__|__|_____|
# |__|  

# Author: Dilip Chauhan
# Github: https://github/TechnicalDC

option1="Vérouiller"
option2="Se déconnecter"
option3="Redémarrer"
option4="Eteindre"

options="$option1\n$option2\n$option3\n$option4"

choice=$(echo -e "$options" | rofi -dmenu -i -no-show-icons -lines 4 -width 20 -p " ") 

case $choice in
	$option1)
		gnome-screensaver-command -l ;;
	$option2)
		i3-nagbar -t warning -m 'You pressed the exit shortcut. Do you really want to exit i3? This will end your X session.' -B 'Yes, exit i3' 'i3-msg exit'
		;;
	$option3)
		systemctl reboot ;;
	$option4)
		systemctl poweroff ;;
esac


