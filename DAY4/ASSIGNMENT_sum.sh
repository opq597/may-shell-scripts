#!/bin/bash
sum=0
i=1
while true
do
	if [ -n "$i" ]
	then 
		echo " enter number"
		echo " press enter if inputs are given"
		read i
		sum=$((sum+i))
	else
		echo " SUM OF ALL NUMBERS =$sum"
		break
	fi
done
