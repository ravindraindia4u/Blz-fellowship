#!/bin/bash
read -p "Enter a number : " num;
#x=$(( $num % 2 ));
while [ $num%2 == 0 ]
do
	echo "2 ";
	num=$(( $num / 2 ));
done
sqrt=$(echo "sqrt($num)" | bc );
for (( i=3; i<=$sqrt; i+=2 ))
do
	#y=$(( $num % $i ));
	while [ $num % $i == 0 ]
	do
		echo "$i ";
		num=$(( $num / $i ));
	done
done
if [ $num -ge 2 ]
then
	echo "$num";
fi

