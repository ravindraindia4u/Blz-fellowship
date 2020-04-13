#!/bin/bash

function myfun() {
	echo $1
}

results="$( myfun $(( RANDOM%2 )) )";
if [ $results -eq 0 ]
then
	echo "success";
else
	echo "failure";
fi
