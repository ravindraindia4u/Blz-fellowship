#!/bin/bash
l=100;
h=999;
diff=$(( $h - $l ));
i=1;
while [ $i -le 10 ]
do
	((i++))
	t=$(( RANDOM % $diff ))
	n=$(( $t + $l ))
	array[$i]="$n";
done
echo ${array[@]}
for (( i=0; i<10; i++ ))
do
	count=0;
	for(( j=0; j<10; j++ ))
	do
		if (( array[j]>array[i] ))
		then
			((count++))
		fi
	done
	readarray -t sorted < <(printf '%s\n' "${array[@]}" | sort)
#	echo ${array[@]}
	if [ $count -eq 1 ]
	then
		echo "Second Largest Number : ${array[$i]}"
	fi
done
