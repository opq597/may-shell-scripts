#!/bin/bash
echo "---------to find max of 2 numbers---------"
echo "enter a biggest number1"
read num1
echo "enter a biggest number2"
read num2

if [ $num1 -gt $num2 ];
then
	echo " first number has biggest size of $num1"
	
elif [ $num2 -gt $num1 ];
	then
		echo " second number has biggest size of $num2"
	else
		echo "incorrect input"
fi
echo "------------------------------------------------------"
#To find maximun size of 2 files 

echo "----------to find highest size of 2 files------------"
#To check the size of the FILE1.txt
a=$(du -h FILE1.txt | awk -F ""  '{print$1}')
#To check the size of the FILE2.txt
b=$(du -h FILE2.txt | awk -F ""  '{print$1}')

if [ $a -gt $b ];
then
	echo "FILE1.txt has bigger size of $a"
elif [ $b -gt $a ];
then
	echo "FILE2.txt has bigger size of $b"
else
	echo "Incorrect file input"
fi


