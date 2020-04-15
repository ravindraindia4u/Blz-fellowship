#!/bin/bash
val1=10
val2=10
if [ $val1 -gt $val2 ]
then
	echo " $val1 is greater than $val2"
elif [ $val1 -eq $val2 ]
then
	echo "Variables are equal"
else
	echo "$val1 is less than $val2"
fi
