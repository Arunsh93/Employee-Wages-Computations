#!/bin/bash

isFullTime=1
isPartTime=2
employeeRate=20
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

wage=$(( $employeeHrs*$employeeRate ))
echo "Wage= $wage"
