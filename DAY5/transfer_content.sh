#!/bin/bash
echo "enter file "
read file

if [ -f "$file" ]
then
	echo " file exists in dir "
	echo "enter a username "
	read user_name
	grep "$user_name" "$file" >> new_file.txt
	echo " TRANSFERRED USERNAME FROM ONE FILE TO ANOTHER"
	echo " CONTENT OF NEW FILE "
	cat new_file.txt
else
	echo "file doesnt exist with $file "
fi

