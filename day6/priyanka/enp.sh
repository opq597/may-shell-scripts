#!/bin/bash
#script to print whether the given input is positive, negative or zero 
#reading input from the user 
read -p "Enter any number [positive, negative, zero]: " num

#verifying if the given input is valid or not 
if [[ $num =~ ^-?[0-9]+$ ]]; then
	echo -e "your input, $num is valid. \nProceeding...."
#verifying if the number is zero
if [ $num -eq 0 ]; then
	echo "the number entered is zero"
	exit 0
#verifying whether the number is negative
	elif echo $num | grep -q '-' ; then
         echo "$num is negative"
	else
	echo "$num is positive"
	fi	
else
	echo "INVALID INPUT! ABORTING..."
fi

#verifying whether the input is positive, negative or zero 
#if echo $num | grep -q '-' ; then
#	echo "$num is negative"
##else
#	echo "$num is positive"
#fi
