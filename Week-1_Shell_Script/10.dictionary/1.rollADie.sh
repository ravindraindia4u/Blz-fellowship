#!/bin/bash
r1=0;
r2=0;
r3=0;
r4=0;
r5=0;
r6=0;
array=()
while [ $r1 -lt 10 -a $r2 -lt 10 -a $r3 -lt 10 -a $r4 -lt 10 -a $r5 -lt 10 -a $r6 -lt 10 ]
do
	randomCheck=$((1 + RANDOM%6 ))
	case  $randomCheck in
		1)
			((r1++))
			array[1]=$r1
			;;
		2)
			((r2++))
			array[2]=$r2
			;;
		3)
			((r3++))
			array[3]=$r3
			;;
		4)
			((r4++))
			array[4]=$r4
			;;
		5)
			((r5++))
			array[5]=$r5
			;;
		6)
			((r6++))
			array[6]=$r6
			;;
	esac
done
#echo $r1 $r2 $r3 $r4 $r5 $r6 
echo "Number of Dice Repeat 	: "${array[@]}
echo "Faces of Dice are 	: "${!array[@]}
#echo ${#array[@]}
max=0;
count=0;
for (( j=1; j<=((${#array[@]})); j++ ))
do
	if (( $max<array[$j] ))
	then
		max=${array[$j]}
		count=$j
	fi
done
echo "Face $count is Repeated Maximum Times : $max"
min=10;
count1=0;
for (( i=1; i<=((${#array[@]})); i++ ))
do 
	temp=${array[$i]}
	if (($min > $temp))
	then
		min=${array[i]}
		count1=$i
	fi
done
echo "Face $count1 is Repeated Minimum Times : $min"
