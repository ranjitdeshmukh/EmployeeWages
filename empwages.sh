#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

EMP_RATE_PERHR=20;
isPartTime=1;
isFullTime=2;

randomCheck=$(( RANDOM%3 ))

if [[ $randomCheck -eq $isFullTime ]];
 then
		empHrs=8;

elif [[ $randomCheck -eq $isPartTime ]];
 then
		empHrs=4;
else
		empHrs=0;			
fi

salary=$((EMP_RATE_PERHR*empHrs));