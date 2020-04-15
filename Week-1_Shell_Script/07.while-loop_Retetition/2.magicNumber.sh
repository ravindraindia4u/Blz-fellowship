#!/bin/bash

read -p "Think of a number n between 1 to 100 : " n;
l=0;
h=$n;
diff=$(( $h - $l ));
if [ $diff -eq 1 ] 
then
	echo "$l"
fi
x=$(( $l + $diff ));
mid=$(( $x / 2 ));
read -p "Is it less than $mid ? : " boolean;


