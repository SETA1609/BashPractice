#!/bin/bash


# you can use the following sets Array, for numbers {min...max} or min 2 3 4 max.

numbers=(1 2 3 4 5 6 7)

for number in ${numbers[@]};
do
	echo $number
	sleep 0.5
done
echo "The loop is over"
