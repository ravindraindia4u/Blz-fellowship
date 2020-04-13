#!/bin/bash
read -p "Enter first Number: " a
read  -p "Enter Second Number: " b
read -p "Enter Third Number: " c

d=$(( a + b * c ))
e=$(( a % b + c ))
f=$(( c + a / c ))
g=$(( a * b + c ))

echo "a + b * c = "$d
echo "a % b + c = "$e
echo "c + a / c = "$f
echo "a * b + c = "$g
#finding max value
#max1=0;
#max2=0;
if [ $d -ge $e ]
then
	max1=$d;
else
	max1=$e;
fi
if [ $f -ge $g ]
then
	max2=$f;
else
	max2=$g;
fi
if [ $max1 -ge $max2 ]
then
	echo "Max Value = "$max1;
else
	echo "Max Value = "$max2;
fi
#finding min value
if [ $d -le $e ]
then
	min1=$d;
else
	min1=$e;
fi
if [ $f -le $g ]
then
	min2=$f;
else
	min2=$g;
fi
if [ $min1 -le $min2 ]
then
	echo "Min Value = $min1";
else
	echo "Min Value = $min2";
fi
