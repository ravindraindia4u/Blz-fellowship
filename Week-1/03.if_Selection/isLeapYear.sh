#!/bin/bash
read -p "Please Enter Year: " year
if [ $year -ge 1000 -a $year -le 9999 ]
then
	a=`expr $year % 4`
	b=`expr $year % 100`
	c=`expr $year % 400`
	if [ $a -eq 0 -a $b -ne 0 -o $c -eq 0 ]
	then
		echo "$year is leap year"
	else
		echo "$year is not leap year"
	fi
else
	echo "Invalid Year Value."
fi


