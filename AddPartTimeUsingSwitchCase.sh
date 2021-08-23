#! /bin/bash

partTime=1
fullTime=2
empWagesPerHrs=20
randomNumber=$((RANDOM%3))

case $randomNumber in 
	$fullTime)
		employeeHrs=8;;
	$partTime)
		employeeHrs=4;;
	*)
	employeeHrs=0;;
esac

wages=$(( $employeeHrs*$empWagesPerHrs ))
echo "Employee Daily Wages: " $wages

