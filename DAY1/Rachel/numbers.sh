#!/bin/bash
#set -x

#read input from terminal
read -p "Enter first argument: " ar1
read -p "Enter second argument: " ar2

#check if given input is a number
echo $ar1 | grep "[0-9]" && echo $ar2 | grep "[0-9]"
if [ $? -eq 0 ]
then
	#if so, print the product of two arguments
	product=$((ar1*ar2))
	echo "Product of given two arguments: $product"
else
	echo "Input arguments are not numbers"
fi

