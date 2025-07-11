#!/bin/bash
#reading input from user
read -p "Enter 2 numbers: " num1 num2
#comparing the numbers and printing the greater number
if [ $num1 -gt $num2 ]; then 
	echo "$num1 is greater than $num2"
elif [ $num1 -eq $num2 ];then
	echo "$num1 is equal to $num2"
else
	echo "$num2 is greater than $num1"
fi
