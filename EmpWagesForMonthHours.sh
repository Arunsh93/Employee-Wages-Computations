#! /bin/bash 

partTime=1
fullTime=2
maxHrsPerMonth=100
empWagesPerHrs=20
numWorkingDays=20

totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -le $maxHrsPerMonth && $totalWorkingDays -le $numWorkingDays ]]
do
	((totalWorkingDays++))
	randomNumber=$((RANDOM%3))

	case $randomNumber in 
		$fullTime)
				employeeHrs=8;;
		$partTime)
				employeeHrs=4;;
		*)
				employeeHrs=0;;
	esac
	
	totalEmpHrs=$((totalEmpHr+$employeeHrs))
done
	
	totalSalary=$(($totalEmpHrs*$empWagesPerHrs));
	echo "Total Hours Employee Worked: $totalEmpHrs"
	echo "Total Salary: $totalSalary"
