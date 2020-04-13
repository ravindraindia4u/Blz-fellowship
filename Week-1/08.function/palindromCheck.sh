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

read -p "Enter a Number to Palindrome Check : " n;
rev="$( palindromeCheck $n )";
if [ $n -eq $rev ]
then
	echo "$n is a palindrome Number";
else
	echo "$n is not a palindrome Number";
fi
