#!/bin/bash

if [ $1 = "touch" ]
then
	read -p "Enter file name: " f1
	touch $f1
	echo "File created with name $f1"
elif [ $1 = "rm" ]
then
	read -p "Enter a file name: " f2
	if [ -f $f2 ]
	then
		rm $f2
	        echo "File removed"
	else
		echo "No File"
	fi
else
	echo "invalid input"


fi
