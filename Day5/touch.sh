#!/bin/bash

echo " enter touch cmd to create the file"
read a

if [ "$a"="touch" ]
then
 
	touch file1.txt

	echo " file is created " 
ls | grep file1.txt
	

fi


echo " enter rm cmd to delete the file"
read a

if [ "$a"="rm" ]
then

        rm file1.txt

        echo " file is deleted "
        ls |  grep file1.txt

fi




