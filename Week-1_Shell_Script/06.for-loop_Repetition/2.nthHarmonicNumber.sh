#!/bin/bash

read -p "Enter a +ve value : " n;
sum=0
echo "Nth Harmonic Series b/w 1 to $n : "
for (( i=1; i<=n; i++ ))
do
	echo -n "1/$i + ";
	k=$(( 1 / $i ));
	sum=`expr $sum + $k`;
done
printf "\n";
echo "Nth Harmonic Number(Hn) : "$(echo $sum | bc )"";
