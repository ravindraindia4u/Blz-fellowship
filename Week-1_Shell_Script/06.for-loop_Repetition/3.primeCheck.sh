#!/bin/bash
read -p "Enter a number to check prime : " num;
flag=0;
m=$(( $num / 2 ));
if [ $num -eq 0 -o $num -eq 1 ]
then
	echo "$num is not a prime number";
else
	for (( i=2; i<=$m; i++ ))
	do
		k=$(( $num % $i ));
		if [ $k -eq 0 ]
		then
			echo "$num is not a prime number";
			flag=1;
			break;
		fi
	done
	if [ $flag -eq 0 ]
	then
		echo "$num is prime number";
	fi
fi


