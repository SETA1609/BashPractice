#!/bin/bash

releaseFile=/etc/os-release

if grep -q "Arch" $releaseFile
then
	#if arch
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $releaseFile
then
	#if debian
	sudo apt update
	echo "would you like to distro-upgrade? y/n"
	read answer
	case $answer in
		y) sudo apt dist-upgrade;;
		n) echo "Thank you :3";;
		*) echo "Wrong input";;
esac
fi

if grep -q "Pop" $releaseFile
then
	#if debian
	sudo apt update
	echo "would you like to distro-upgrade? y/n"
	read answer
	case $answer in
		y) sudo apt dist-upgrade;;
		n) echo "Thank you :3";;
		*) echo "Wrong input";;
esac
fi
