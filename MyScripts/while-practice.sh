#!/bin/bash

myVar=1

# -le less than 
# for operations one has to do double () and start with a $

while [ $myVar -le 10 ]
do
	echo $myVar
	myVar=$(( $myVar +1 ))
	sleep 0.5
done

echo "the loop is done."
