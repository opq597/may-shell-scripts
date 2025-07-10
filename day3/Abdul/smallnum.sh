#!/bin/bash
#Find the smallest number out of three numbers

read -p "Enter the three numbers : " num1 num2 num3
if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]
then 
	echo "$num1 is the smallest number"
elif [ $num2 -lt $num3 ]
then 
	echo "$num2 is the smallest number"
else
	echo "$num3 is the smallest number"
fi
