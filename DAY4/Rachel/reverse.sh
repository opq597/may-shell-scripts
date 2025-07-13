#!/bin/bash

read -p "Enter the file: " file

if [ ! -f $file ]
then
	echo "File not found"
	exit 1
fi
line=$(wc -l < "$file")
for i in $(seq "$line" -1 1)
do
	awk -v line_num="$i" 'NR==line_num {print $0}' "$file"
done
