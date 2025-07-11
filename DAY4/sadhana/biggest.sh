#!/bin/bash
echo ---------greatest of 2 numbers--------------
echo "enter  biggest number is num1"
read num1
echo "enter biggest number is  num2"
read num2
if [  $num1 -gt  $num2  ]
then
echo "first number is the biggest number $num1"
elif [  $num2 -gt $num1  ]
then 
echo "second number is the biggest number $num2"
else 
echo "Incorrect file input"
  fi


echo --------------- find highest filesize--------------
a=$(du -h file3.txt | awk -F "" '{print$1}')
b=$(du -h file4.txt | awk -F "" '{print$1}')
if [ $a -gt $b ]
then
echo "FILE3.txt has highest filesize of $a"
elif [ $b -gt $a ]
then
echo "FILE4.txt has highest filesize of $b"
else
echo "incorrect filesize"
fi

