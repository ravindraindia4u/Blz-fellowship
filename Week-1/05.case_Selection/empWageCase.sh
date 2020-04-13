#!/bin/bash
isPartTime=1;
isFullTime=2;
randomCheck=$(( RANDOM%3 ));
empRatePerHr=20;
case $randomCheck in
	$isFullTime)
		empHrs=8;;
	$isPartTime)
		empHrs=4;;
	*)
		empHrs=0;;
esac
echo "salary = $(( $empHrs * $empRatePerHr ))";
		
