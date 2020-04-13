#!/bin/bash
#function for prime check
function isPrime(){
	n=$1
	flag=0;
	m=$(( $n / 2 ));
	if [ $n -eq 0 -o $n -eq 1 ]
	then
		echo "0";
	else
		for (( i=2; i<=$m; i++ ))
		do
			k=$(( $n % $i ));
			if [ $k -eq 0 ]
			then
				echo "0";
				flag=1;
				break;
			fi
		done
		if [ $flag -eq 0 ]
		then
			echo "1";
		fi
	fi
}
#function to check palindrome number
function isPalindrome(){
	n=$1;
	s=0;
	rev="";
	while [ $n -gt 0 ]
	do
		s=$(( $n % 10 ));
		n=$(( $n / 10 ));
		rev=$( echo ${rev}${s} );
	done
	echo $rev
}
read -p "please enter a number to check prime and palindrome number : " num;
prime="$( isPrime $num )"
#echo $prime
if [ $prime -eq 1 ]
then
	palindrome="$( isPalindrome $num )"
	if [ $palindrome -eq $num ]
	then
		echo "$num is both prime number as well as palindrome number.";
	else
		echo "$num is prime number but not palindrome number.";
	fi
else
	echo "$num is not a prime number";
fi
