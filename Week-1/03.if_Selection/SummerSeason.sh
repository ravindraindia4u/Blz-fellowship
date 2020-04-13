#!/bin/bash
read -p "Please Enter day:" d
read -p "Enter the Month:" m

if [ $d -ge 20 -a $d -le 31 -a $m -eq 3 ]
then
	echo "true"
elif [ $d -ge 1 -a $d -le 30 -a $m -eq 4 ]
then
	echo "true"
elif [ $d -ge 1 -a $d -le 31 -a $m -eq 5 ]
then
	echo "true"
elif [ $d -ge 1 -a $d -le 20 -a $m -eq 6 ]
then
	echo "true"
else
	echo "false"
fi
