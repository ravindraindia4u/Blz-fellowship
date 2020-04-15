#!/bin/bash
l=100;
h=999;
diff=$(( $h - $l ));
function sort () {
for (( i=0; i<10; i++ ))
do
	k=$(( i + 1 ))
	for (( j=$k; j<10; j++ ))
	do
		if (( array[i]>array[j] ))
		then
			temp=${array[$j]}
			array[$j]=${array[$i]}
			array[$i]=$temp;
		fi
	done
done
}
#array=($(for i in {0..9}; do echo $((RANDOM%1000)); done ))
array=($(for i in {0..9}; do t=$((RANDOM%$diff)); n=$(( $t + $l )); echo $n; done ))
sort ${array[@]}
len=$((${#array[@]}))
echo "Ten Array Elements = "${array[@]}
echo "Second Smallest Number = "${array[1]}
echo "Second Largest Number = "${array[(($len - 2))]}
