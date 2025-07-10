#!/bin/bash
#this is a code to take user input and remove all the vowels from it
#reading input from the user
read -p "Enter your input: " ip
#checking if the user input is empty. prints invalid if it is empty and exits
if [ "$ip" = " " ]; then
	echo "invalid"
	exit 1
else
	#printing the userinput and passing it to sed 
	remov=$(echo "$ip" | sed 's/[aeiouAEIOU]//g')
	echo "$ip withtout vowels is $remov"
fi


