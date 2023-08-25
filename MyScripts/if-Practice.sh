#!/bin/bash

echo "give a number between 1 and 10."

read myNum

# -eq = equals; -gt = greater than; -ne = is false

if [[ $((myNum % 2)) -eq 0 ]];
then
	echo "You had given an even Number."
else
	echo "You had given an odd Number."
fi
