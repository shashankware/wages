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
