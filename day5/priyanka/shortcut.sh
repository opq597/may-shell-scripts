#!/bin/bash
#take input from the user whether they want to perform remove or create a file
file="$1" 
read -p "Please input rm to remove files and touch to create files: " ip
if [ "$ip" = "rm" ] || [ "$ip" = "touch" ]; then
       echo "your input is $ip"
       echo "listing files and directories for your reference"
       ls
else
 echo "invalid input"
 exit 1 
fi

if [ "$ip" = "rm" ]; then
	if [ -f "$file" ]; then
		echo -e "\n"
		echo "file named $file exists, hence removing..."
		rm $file
		echo -e "\n"
		echo -e "\n"
		echo "listing files and directories for your reference"
		ls
	else 
		echo -e "\n"
		echo "file named $file doesn't exist. Aborting..."
	fi
elif [ "$ip" = "touch" ]; then
	if [ -f "$file" ]; then
		echo "\n"
		echo "file already exists so renaming..."
	else
		touch $file
		echo -e "\n"
		echo "file $file is created"
		echo -e "\n"
		echo -e "\n"
		echo "listing files and directories for your reference"
		ls
	fi
else 
	exit 0
fi


	
