#!/bin/bash
echo "		~: Welcome to Employee Wage Computation Program :~";

#CONSTANTS FOR THE PROGRAM
PRESENT=1;
ABSENT=0;
WAGE_PER_HR=20;
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
for (( day=1; day<=$NUM_WORKING_DAYS; day++ ))
do
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

