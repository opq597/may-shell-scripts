#!/bin/bash

#redirect content of /etc/passwd into temp file
cat /etc/passwd > temp

#read each line from temp to process
while read line
do	
	#get 3rd column(UID) 
        UID=`echo $line | cut -d ":" -f3`
	#check if UID is greater than 1000
	if [ $UID -gt 1000 ]
	then
		#if so, get the first column (username)
		name=`echo $line | cut -d ":" -f1`
		echo $name
	fi
done < temp
#< temp feeds the contents of temp line-by-line into read line.



