#!/bin/bash
echo "Please give the command that you want to check:"

read myCmd

cmd=/usr/bin/"$myCmd"

if [ -f $cmd ];
then
	echo "$myCmd is installed, let me show you how it works"
	man $myCmd
else
	echo "$myCmd is not installed. Would you like to install it? y/n"
	read antwort
	case $antwort in 
		y) sudo apt install $myCmd;;
		n) echo "Thank you for using my script :3";;
		*) echo "Invalid input";;
	esac	
fi

