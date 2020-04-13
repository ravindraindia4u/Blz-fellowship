#!/bin/bash

isPartTime=1;
isFullTime=2;
totalSalary=0;
empRatePerHr=20;
numOfWorkingDay=20;

for (( day=1; day<=$numOfWorkingDay; day++ ))
do
	empCheck=$(( RANDOM%3 ));
	case $empCheck in
		$isFullTime)
			empHrs=8;;
		$isPartTime)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	salary=$(( $empRatePerHr * $empHrs ));
	totalSalary=$(( $totalSalary + $salary ));
	#echo "Day $day Salary = Rs.$salary/-"; 
done
echo "Total Salay = Rs.$totalSalary/-";
