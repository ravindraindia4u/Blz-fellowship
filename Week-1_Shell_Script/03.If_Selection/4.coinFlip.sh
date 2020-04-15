#!/bin/bash
randomNumber=$(( RANDOM % 2 ))
if [ $randomNumber -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
	
