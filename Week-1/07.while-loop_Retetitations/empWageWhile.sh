#!/bin/bash

#Constants for the program
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=10;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

#VARIABLES
totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ));
	case $empCheck in
		$IS_FULL_TIME)
			empHrs=8;;
		$IS_PART_TIME)
			empHrs=4;;
		*)
			empHrs=0;;
	esac
	totalEmpHrs=$(( $totalEmpHrs + $empHrs ));
done
echo "Total EmpHrs = $totalEmpHrs";
echo "Total Salay = $(($totalEmpHrs * $EMP_RATE_PER_HR ))/-";

