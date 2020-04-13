#!/bin/bash
read -p "Enter a number among this (1,10,100,1000,....): " num
case $num in
	1)
		echo "Unit";;
	10)
		echo "Ten";;
	100)
		echo "Hundred";;
	1000)
		echo "Thousand";;
	10000)
		echo "Ten Thousand";;
	100000)
		echo "Hundred Thousand";;
	100000)
		echo "Million";;
	*)
		echo "Greater than Million";;
esac
