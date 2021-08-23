#! /bin/bash 

FullTime=1
PartTime=2
empWagePerHrs=20
dailyWage=0
totalWage=0


for((i=0;i<20;i++))
do
	randomNumber=$((RANDOM%3))
	if [ $randomNumber -eq $FullTime ];
	then 
		employeeHrs=8
	elif [ $randomNumber -eq $PartTime ];
	then
		employeeHrs=4
	else
		employeeHrs=0
	fi
	
	dailyWage=$(($salary+($employeeHrs*$empWagePerHrs)))
	totalWage=$(($dailyWage*$empWagePerHrs))
done
echo "Employee Daily Wages: " $dailyWage
echo "Employee Total Wages: " $totalWage
