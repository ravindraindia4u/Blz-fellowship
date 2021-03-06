#!/bin/bash
echo "		~: Welcome to Employee Wage Computation Program :~";

#CONSTANTS FOR THE PROGRAM
WAGE_PER_HR=20;
MAX_HRS_IN_MONTH=100;
IS_FULL_TIME=2;
IS_PART_TIME=1;
NUM_WORKING_DAYS=20;

#VARIABLES
empHours=0;
fullDayWork=0;
halfDayWork=0;
absent=0;
totalEmpHours=0;
totalWorkingDays=0;
count=1;

function getWorkingHours() {
	case $1 in
		$IS_FULL_TIME)
			empHours=8;;
		$IS_PART_TIME)
			empHours=4;;
		*)
			empHours=0;;
	esac
	echo $empHours;
}
function calcDailyWage() {
	local workHours=$1;
	dailyWage=$(($workHours * $WAGE_PER_HR));
	echo $dailyWage;
}
function calcWageAlongDailyWage(){
	local totalEmpHours=$1;
	empWage=$(($totalEmpHours * $WAGE_PER_HR));
	echo $empWage;
}
while [[ $totalEmpHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
	((totalWorkingDays++))
	empCheck=$((RANDOM%3))
	if [ $empCheck -eq 2 ]
	then
		((fullDayWork++));
	elif [ $empCheck -eq 1 ]
	then
		((halfDayWork++));
	else
		((absent++));
	fi
	empHours="$( getWorkingHours $empCheck )"
	totalEmpHours=$(($totalEmpHours + $empHours))
	empDailyWage[$totalWorkingDays]="$( calcDailyWage $empHours )"
	empWageAlongDailyWage[$totalWorkingDays]="$( calcWageAlongDailyWage $totalEmpHours )";
	days[$count]=$count;
	((count++))
done
totalWage=$(($WAGE_PER_HR * $totalEmpHours))
totalDay=$(($fullDayWork + $halfDayWork + $absent))
echo "---------------------------------------------------------------------------------------------";
echo "		~: Days           Daily-Wage              Emp-Wage along with daily wage :~";
echo "---------------------------------------------------------------------------------------------";
i=0;
while [ $i -lt $totalDay ]
do
	((i++))
	echo "		   ${days[$i]}			Rs.${empDailyWage[$i]}		   Rs.${empWageAlongDailyWage[$i]}"
#	((i++))
done
echo "----------------------------------------------------------------------------------------------";
echo "Total Wage in a Month			: Rs.$totalWage/-";
echo "----------------------------------------------------------------------------------------------";
echo "Total Number of Full Day Work           : $fullDayWork"
echo "Total Number of Half Day Work           : $halfDayWork"
echo "Total Number of Absent Day              : $absent"      
echo "Total EmpHours in a Month               : $totalEmpHours";
echo "----------------------------------------------------------------------------------------------";
