#!/bin/bash
echo "		~: Welcome to Employee Wage Computation Program :~";

#CONSTANTS FOR THE PROGRAM
PRESENT=1;
ABSENT=0;

attendanceCheck=$((RANDOM%2))
if [ $PRESENT -eq $attendanceCheck ]
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi
