#!/bin/bash

releaseFile=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updaterErrors.log

checkExitStatus(){
	if [ $? -ne 0  ]
	then
		echo "An error occurred, please check the $errorlog file."
	fi
}

if grep -q "Arch" $releaseFile
then
	#if arch
	sudo pacman -Syu 1>>$logfile 2>>$errorlog
	checkExitStatus
fi

if grep -q "Pop" $releaseFile || grep -q "Debian" $releaseFile || grep -q "Ubuntu" $releaseFile
then
	#if debian
	sudo apt update	 1>>$logfile 2>>$errorlog
	checkExitStatus
	echo "would you like to distro-upgrade? y/n"
	read answer
	case $answer in
		y) sudo apt dist-upgrade 1>>$logfile 2>>$errorlog
		checkExitStatus
		;;
		n) echo "Thank you :3";;
		*) echo "Wrong input";;
esac
fi
