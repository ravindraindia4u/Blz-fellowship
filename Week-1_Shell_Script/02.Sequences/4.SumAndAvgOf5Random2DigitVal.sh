#!/bin/bash
l=10
h=99
in=`expr $h - $l`
echo "Five Two Digits Random Value are :"
for i in `seq 1 5`
do
	t=`expr $RANDOM % $in`
	n=`expr $t + $l`
	echo "$n"
	sum=`expr $sum + $n`
	avg=$(echo $sum / 5 | bc -l)
done
echo "Sum = "$sum
echo "Avg = "$(echo "scale = 3; $avg / 1" | bc -l)

