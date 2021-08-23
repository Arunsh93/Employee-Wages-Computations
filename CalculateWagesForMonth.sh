#!/bin/bash

isFullTime=1
isPartTime=2
employeeRate=20
wages=0

for ((i=0;i<20;i++))
do
	randomNumber=$((RANDOM%3))
	if [[ $randomNumber -eq $isFullTime ]]
	then
   echo "FullTime"
   empHrs=8

	elif [[ $randomNumber -eq $isPartTime ]]
	then
	   echo "PartTime"
	  	employeeHrs=4

	else
	echo "Absent"
	employeeHrs=0
	fi

	wage=$(( $wages + ($employeeHrs*$employeeRate) ))
done
echo "Employee Wages for a Month: "$wage

