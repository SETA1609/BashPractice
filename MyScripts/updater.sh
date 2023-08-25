#!/bin/bash

if [ -d /etc/pacman.d ]
then
	#if arch
	sudo pacman -Syu
fi

if [ -d /etc/apt ]
then
	#if debian
	sudo apt update
	echo "would you like to distro-upgrade? y/n"
	read answer
	case $answer in
		y) sudo apt dist-upgrade
		n) echo "Thank you :3"
		*) echo "Wrong input"
esac
fi
