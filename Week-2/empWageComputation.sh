#!/bin/bash
echo "		~: Welcome to Employee Wage Computation Program :~";

#CONSTANTS FOR THE PROGRAM
PRESENT=1;
ABSENT=0;
WAGE_PER_HR=20;
IS_FULL_TIME=8;
IS_PART_TIME=4;
IS_ABSENT=0;

attendanceCheck=$((RANDOM%2))
if [ $PRESENT -eq $attendanceCheck ]
then
	empCheck=$((RANDOM%2))
	if [ $empCheck -eq 1 ]
	then
		echo "Employee is Present - Full Time"
		dailyWage=$(($WAGE_PER_HR * $IS_FULL_TIME))
		echo "Daily Wage = "$dailyWage;
	else
		echo "Employee is Present - Part Time"
		dailyWage=$(($WAGE_PER_HR * $IS_PART_TIME))
		echo "Daily Wage = "$dailyWage;
	fi
else
	echo "Employee is Absent";
	dailyWage=$(($WAGE_PER_HR * $IS_ABSENT))
	echo "Daily Wage = "$dailyWage;
fi

