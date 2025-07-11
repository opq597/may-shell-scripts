#!/bin/bash
echo "Enter a filename "
read filename 
if [ -f "$filename" ]
then
	echo " \n -------------- NAMES WITH AGE>=40-------------- \n "
	awk -F ":" 'NR>1 && $2 >=40 {print $1 }' "$filename"
	echo "--------------------------------------------"
else
	echo " INVALID FILENAME ,PLEASE ENTER CORRECT FILENAME"
fi

  

