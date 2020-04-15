#!/bin/bash
function palindromeCheck(){
        n=$1;
        s=0;
        rev="";
        while [ $n -gt 0 ]
        do
                s=$(( $n % 10 ));
                n=$(( $n / 10 ));
                rev=$( echo ${rev}${s} );
        done
        echo $rev;
}
i=1;
count=0;
array=()
while [ $i -lt 100 ]
do
	rev="$( palindromeCheck $i )"
	if [ $i -eq $rev ]
	then
		array[$count]=$i;
		((count++));
	fi
	((i++))
done
echo "Palindrome Number bitween 0 to 100 are : ${array[@]}";

