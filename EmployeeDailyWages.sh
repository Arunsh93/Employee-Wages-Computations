#!/bin/bash

isPresent=1
randomCheck=$((RANDOM%2))
if [[ $isPresent -eq $randomCheck ]]
then
   empWagesPerHrs=20
   empHrs=8
   wage=$(( $empHrs*$empWagesPerHrs ))
else
   echo "Absent"
   wage=0
fi

echo "Wage = $wage"
