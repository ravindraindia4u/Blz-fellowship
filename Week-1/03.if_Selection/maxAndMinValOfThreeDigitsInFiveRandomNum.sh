#!/bin/bash
l=100
h=999
in=$(( $h - $l ))
echo "Five Three Digits Random values are :"
max=0
min=999
for i in `seq 1 5`
do
	t=`expr $RANDOM % $in`
	n=`expr $t + $l`
	echo "$n"

	if [ $n -gt $max ]
	then
		max=$n
	fi
	if [ $n -le $min ]
	then
		min=$n
	fi
done
echo "Max Number = "$max
echo "Min Number = "$min
                                           
