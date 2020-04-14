#!/bin/bash
echo "		~: Welcome to Employee Wage Computation Program :~";

#CONSTANTS FOR THE PROGRAM
PRESENT=1;
ABSENT=0;
WAGE_PER_HR=20;
MAX_HRS_IN_MONTH=100;
IS_FULL_TIME=2;
IS_PART_TIME=1;
IS_ABSENT=0;
NUM_WORKING_DAYS=20;

#VARIABLES
empHours=0;
fullDayWork=0;
halfDayWork=0;
absent=0;
totalEmpHours=0;
totalWorkingDays=0;
while [[ $totalEmpHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	case $empCheck in
		$IS_FULL_TIME)
			((fullDayWork++));
			empHours=8;;
		$IS_PART_TIME)
			((halfDayWork++));
			empHours=4;;
		*)
			((absent++));
			empHours=0;;
	esac
	totalEmpHours=$(($totalEmpHours + $empHours))
done
totalWage=$(($WAGE_PER_HR * $totalEmpHours))
echo "Total Number of Full Day Work	: $fullDayWork"
echo "Total Number of Half Day Work	: $halfDayWork"
echo "Total Number of Absent Day	: $absent"	
echo "Total EmpHours in a Month	: $totalEmpHours";
echo "Total Wage in a Month		: $totalWage";

