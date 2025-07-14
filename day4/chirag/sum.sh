#!/bin/bash

sum()
{
	echo "Enter the numbers:"
	read -a num
	sum=0
	n=0

	while [ $n -lt ${#num[@]} ]
	do
		sum=$(($sum + num[n]))
		n=$(($n+1))
	done

	echo "the sum is $sum"
}


sum
