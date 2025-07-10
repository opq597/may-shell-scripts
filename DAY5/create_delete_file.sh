#!/bin/bash

echo "To create a file: enter touch"
read a
b=$(date)
if [ "$a" = "touch" ]; then
     file_name="file__$b.txt"
    touch "$file_name"
    echo "A new file created with name $file_name"
    echo "\nSearching the file in the directory\n"
     ls -l | grep "$file_name"
fi

echo "To delete a file: enter rm"
read a
if [ "$a" = "rm" ]; then
    rm -rf "$file_name"
    echo "$file_name file is deleted successfully"
    echo "\nSearching for the file in the directory after deletion\n"
    ls -l | grep "$file_name"
fi
