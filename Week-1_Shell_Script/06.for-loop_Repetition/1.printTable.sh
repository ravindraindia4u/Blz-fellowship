#!/bin/bash

read -p "Enter the value of n : " n
powerOf2=1;
for (( i=0; i<=n; i++ ))
do
	printf  "	2^$i = $powerOf2\n";
	powerOf2=$(( 2 * $powerOf2 ));
done
printf "\n";
