#!/bin/bash

read -p "Enter the size of Array : " len;
array=()
i=0;
while [ $i -lt $len ]
do
	read -p "Enter the value for index $i : " io
	array[$i]=${io};
	((i++));
done
echo "Array Elements are : "${array[@]}
count=0;
len=${#array[@]}
for (( i=0; i<(($len - 2 )); i++ ))
        do
                for (( j=((i + 1)); j<(($len - 1)); j++ ))
                do
                        for (( k=((j + 1)); k<$len; k++ ))
                        do
                                sum=$(( array[i] + array[j] + array[k] ))
                                if [ $sum -eq 0 ]
                                then
                                        echo "Triplet elements are : ${array[$i]} ${array[$j]} ${array[$k]}";
                                        ((count++));
                                fi
                        done
                done
        done
echo "Number of Triplets with Zero sum : $count";
