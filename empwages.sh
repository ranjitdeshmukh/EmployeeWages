#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

EMP_RATE_PERHR=20;
isPartTime=1;
isFullTime=2;
totalSalary=0;
numWorkingDay=20;

for (( day=1; day<=numWorkingDay; day++ ))
do

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
salary=$(($EMP_RATE_PERHR*$empHrs));
totalSalary=$(($totalSalary+$salary))
done
