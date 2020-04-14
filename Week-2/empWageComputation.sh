#!/bin/bash
echo "		~: Welcome to Employee Wage Computation Program :~";

#CONSTANTS FOR THE PROGRAM
PRESENT=1;
ABSENT=0;
WAGE_PER_HR=20;
IS_FULL_TIME=1;
IS_PART_TIME=0;
IS_ABSENT=0;

#VARIABLES
empHours=0;
attendanceCheck=$((RANDOM%2))
if [ $PRESENT -eq $attendanceCheck ]
then
	empCheck=$((RANDOM%2))
	case $empCheck in
		$IS_FULL_TIME)
			echo "Employee is Present - Full Time";
			empHours=8;;
		$IS_PART_TIME)
			echo "Employe is Present - Part Time";
			empHours=4;;
	esac
	dailyWage=$(($WAGE_PER_HR * $empHours))
	echo "Daily Wage = "$dailyWage;
else
	echo "Employee is Absent";
	dailyWage=$(($WAGE_PER_HR * $IS_ABSENT))
	echo "Daily Wage = "$dailyWage;
fi

