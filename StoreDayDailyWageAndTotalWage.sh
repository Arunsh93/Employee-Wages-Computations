#! /bin/bash 

Fulltime=1
Parttime=2
empWagePerHrs=20
dailyWage=0
totalWage=0
a=0
b=0

for((i=0;i<20;i++))
do
	randomNumber=$((RANDOM%3))
	if [ $randomNumber -eq $Fulltime ]
	then
		employeeHrs=8
		a=$((++$Fulltime))
	elif [ $randomNumber -eq $Parttime ]
	then
		employeeHrs=4
		b=$((++$Parttime))
	else
		employeeHrs=0
	fi
	
	dailyWage=$(($dailyWages+($employeeHrs*$empWagePerHrs)))
	totalWage=$(($dailyWage*$empWagePerHrs))

done

echo "Employee Daily Wage: " $dailyWage
echo "Employee Monthly Wage: " $totalWage
echo "Fulltime Working Day: " $a
echo "Parttime Working Day: " $b
		 
