#!/bin/bash

present=1
absent=0
randomNumber=$(($RANDOM%2))
if [ $randomNumber -eq $present ]
then
	echo "Worker is present"
else
	echo "Worker is absent"
fi

wage_per_hr=20
daily_wage=$(($wage_per_hr*8))
echo "daily wage:" $daily_wage
