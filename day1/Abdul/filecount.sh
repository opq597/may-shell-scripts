#!/bin/bash

# To Print the word, line and char count of th file
read -p "Enter the filename: " filename

file="$filename"

if [ ! -f "$file" ]
then 
	echo "The $file file does not exist"
	exit 1
fi
echo "print the content of the file"
cat "$file"

word_count=$(wc -w < "$file")
echo "The "$file" file contains "$word_count" words"
line_count=$(wc -l < "$file")
echo "The "$file" file contains "$line_count" lines"
char_count=$(wc -c < "$file")
echo "The "$file" file  contains "$char_count" characters"

