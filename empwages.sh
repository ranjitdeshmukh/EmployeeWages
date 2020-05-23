#!/bin/bash -x

echo "Welcome TO Employee Wages Problem"

randomCheck=$(( RANDOM%2 ))

if [[ $randomCheck -eq 1 ]];
 then
	echo "Employee is  present"

elif [[ $randomCheck -eq 0 ]];
 then
		echo "Employee not present"	
fi