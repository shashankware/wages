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

part_time=1
full_time=2
absent=0
part_time_hr=4
wage_per_hr=20
full_time_hr=8
randomNumber=$(($RANDOM%3))
if [ $randomNumber -eq $part_time ]
then
	echo "part time wage:" $(($part_time_hr*$wage_per_hr))
elif [ $randomNumber -eq $full_time ]
then
	echo "full time wage:" $(($full_time_hr*$wage_per_hr))
else
	echo "worker absent"
fi

daily_wage=160
wage_per_hr=20
echo "1:Wage per month(by day) 2:wage per month(by hr and day)"
read -p "enter choice:" choice
case $choice in
   "1")
      monthly_wage=$((20*$daily_wage))
      echo "monthly  wage(by days):" $monthly_wage
      ;;
   "2")
      monthly_wage=$((100*$wage_per_hr))
      echo "monthly wage(by hours):" $monthly_wage
      ;;
esac
