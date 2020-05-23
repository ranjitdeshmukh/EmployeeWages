#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

EMP_RATE_PERHR=20;
isPartTime=1;
isFullTime=2;

empCheck=$(( RANDOM%3 ))

case empCheck in
	isFullTime)
		 empHrs=8
		 ;;
	isPartTime)
		 empHrs=8
		  ;;
        *)     
		empHrs=8
		;;	
esac
salary=$((EMP_RATE_PERHR*empHrs));
