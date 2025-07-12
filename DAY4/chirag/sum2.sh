#!/bin/bash

sum()
{
	echo "Enter the numbers with space"
	read -a num
	sum=0
	n=0

	while [ $n -lt ${#num[@]} ]
	do
		sum=$(($sum + num[n]))
		n=$(($n+1))
	done

	echo "The sum is $sum"
}
sum
