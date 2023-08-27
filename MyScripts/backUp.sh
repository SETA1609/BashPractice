#!/bin/bash

# check for 2 args

if [ $# -ne 2 ]
then
	echo "Usage backup.sh <source_d> <target_d>."
	echo "Try again."
	exit 1
fi

# Check to see if rsync is installed
if ! command -v rsync > /dev/null 2>&1
then 
	echo "This script requires rsync, please install it"
	exit 2
fi

# capture date
currentDate=$(date +y-%m-%d)

rsyncOptions="-avb --backup-dir $2/$currentDate --delete --dry-run"

$(which rsync) $rsyncOptions $1 $2/current >> Backup_$currentDate-log

