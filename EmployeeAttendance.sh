#! /bin/bash
echo "Welcome Employee Wages Computations"

present=1

randNumber=$((RANDOM%2))
if [ $randNumber -eq $present ];
then
	echo "Employee is Present"
else 
	echo "Employee is Absent"
fi
