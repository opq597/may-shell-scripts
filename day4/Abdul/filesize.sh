#!/bin.bash

read -p "Enter the two files:" file1 file2

size1=$(du -sb $file1 | awk -F " " '{print$1}')
size2=$(du -sb $file2 | awk -F " " '{print$1}')

fsize1= echo "The size of $file1 is $size1 bytes"
fsize2= echo "The size of $file2 is $size2 bytes"

if [ "$size1" -gt "$size2" ]
then
	echo "The size of  $file1 is larger than $file2"
else
	echo "The size of  $file2 is larger than $file1"
fi
