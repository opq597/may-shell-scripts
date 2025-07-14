#!/bin/bash
read -p "Enter three numbers: " num1 num2 num3
#consider = conditions
if [ $num1 -eq $num2 ]; then
	echo "$num1 is equal to $num2 so aborting..."
	exit 0
	elif [ $num1 -eq $num3 ]; then
		echo "$num1 is equal to $num3 so aborting..."
		exit 0
	else
	       if [ $num2 -eq $num3 ]; then
		echo "$num2 equals to $num3 so aborting..."
	       fi
	       exit 0
fi

#consider num1 is the lowest number
if [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ]; then
        echo "$num1 is less than $num2 and $num3"
       if [ $num2 -lt $num3 ]; then
        echo "$num2 is less than $num3"
	echo "the ascending order is $num1 , $num2 and $num3"
       else
       echo "$num3 is less than $num2"
       echo "the ascending order is $num1 , $num3 and $num2"
       fi

#consider num2 is the lowest number 
elif [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ]; then
	echo "$num2 is less than $num1 and $num3"
	if [ $num1 -lt $num3 ]; then
		echo "$num1 is less than $num3. therefore ascending order is $num2 , $num1 , $num3"
	else 
		echo "$num3 is less than $num1. therefore ascending order is $num2 , $num3 , $num1"
	fi 

#consider num3 is the lowest number 
else
       if [ $num1 -lt $num2 ]; then 
	echo "the ascending order is $num3, $num1, $num2"
else
	echo "the ascending order is $num3, $num2, $num1"
       fi 
fi 



