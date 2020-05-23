#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

EMP_RATE_PERHR=20;
EMP_HR=8;

randomCheck=$(( RANDOM%2 ))

if [[ $randomCheck -eq 1 ]];
 then
	echo "Employee is  present"
	salary=$((EMP_RATE_PERHR*EMP_HR));

elif [[ $randomCheck -eq 0 ]];
 then
	echo "Employee not present"	
fi