#!/bin/bash

read -p "Enter a value to print table upto 256 : " num;
powerOf2=1;
i=0;
while [ $i -le $num -a $powerOf2 -le 256 ]
do
	printf "	2^$i = $powerOf2\n";
	powerOf2=$(( 2 * $powerOf2 ));
	(( i++ ));
done
printf "\n";
