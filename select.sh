#!/bin/bash

call=(0 0 0 0 0 0 0 0 0 0)
name=("A" "B" "C" "D" "E" "F" "G" "H" "I" "J")
appear_name() {
	echo "${name[count]}: ${call[count]}"
}

num=$1
count=0
rand=0
if [ -n "$num" ]; then
	while [[ $count -lt $num ]]
	do
		rand=$(( $RANDOM % 10 ))
		echo ${name[rand]}
		call[rand]=$(( call[rand] + 1 ))
		count=$(( count + 1 ))
	done
	count=0
	while [[ $count -lt ${#name[@]} ]]
	do
		echo "${name[count]}: ${call[count]}"
		count=$(( count + 1 ))
	done
else
	rand=$(( $RANDOM % 10 ))
	echo ${name[rand]}
fi
