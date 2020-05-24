#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

EMP_RATE_PERHR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MAONTH=4;
NUM_WORKING_DAY=20;

totalEmpHrs=0;
totalWorkingDays=0;
totalSalary=0;
declare -A dailyWage
function getWorkingHours(){
	local empCheck=$1
	case $empCheck in
		$IS_FULL_TIME)
			 workingHrs=8
			 ;;
		$IS_PART_TIME)
			 workingHrs=4
			  ;;
	        *)     
			workingHrs=0	
			;;	
	esac
	echo "$workingHrs";
}

function getEmpWage(){
    local empHr=$1
  	echo $(($empHr*EMP_RATE_PERHR_WORKING_DAY))
}
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MAONTH && $totalWorkingDays -lt $NUM_WORKING_DAY ]]; 
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ))
	empHrs="$( getWorkingHours $empCheck )"
	totalEmpHrs=$(($totalEmpHrs*$empHrs));
	dailyWage["day " $totalWorkingDays ]="$( getEmpWage $empHrs )"
done
 
totalSalary=$(($totalEmpHrs*$EMP_RATE_PERHR))
echo ${dailyWage[@]}
echo ${!dailyWage[@]}
