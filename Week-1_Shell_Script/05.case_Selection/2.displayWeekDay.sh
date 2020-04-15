#!/bin/bash
read -p "please enter value between 0 to 6 : " num
case $num in
	0)
		echo "Sunday";;
	1)
		echo "Monday";;
	2)
		echo "Tuesday";;
	3)
		echo "Wednesday";;
	4)
		echo "Thursday";;
	5)
		echo "Friday";;
	6)
		echo "Saturday";;
	*)
		echo "Invalid Input";;
esac

