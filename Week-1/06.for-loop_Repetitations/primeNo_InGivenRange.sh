#!/bin/bash

read -p "please enter start range : " start;
read -p "please enter end range : " end;
echo "		Prime number between $start and $end are : "
count=0;
if [ $start -le 2 ]
then
	echo -n "2 ";
fi
for (( i=$start; i<=$end; i++ ))
do
	if [ $i -eq 1 -o $i -eq 0 ]
	then
		continue;
	fi
	for (( j=2; j<$i; j++ ))
	do
		k=$(( $i % $j ));
		if [ $k -eq 0 ]
		then
			count=0;
			break;
		else
			count=1;
		fi
	done
	if [ $count -eq 1 ]
	then
		echo -n "$i ";
	fi
done
printf "\n";

