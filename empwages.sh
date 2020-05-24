#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

EMP_RATE_PERHR=20;
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MAONTH=10;
totalSalary=0;
NUM_WORKING_DAY=20;

totalEmpHrs=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MAONTH && $totalWorkingDays -lt $NUM_WORKING_DAY ]]; 
do
	((totalWorkingDays++))
	empCheck=$(( RANDOM%3 ))

	case empCheck in
		$isFullTime)
			 empHrs=8
			 ;;
		$isPartTime)
			 empHrs=4
			  ;;
	        *)     
			empHrs=0	
			;;	
	esac
	totalEmpHrs=$(($totalEmpHrs*$empHrs));

done

totalSalary=$(($totalEmpHrs+$EMP_RATE_PERHR))