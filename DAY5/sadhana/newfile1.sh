#!/bin/bash
echo "enter a file"
read filename
if [ -f "$filename" ]
then
        echo " enter username from file "
        read user_name
grep "$user_name" "$filename" >> new_file4.txt
echo "username is append to the new file"
echo "view the content of the file"
cat new_file4.txt
else
        echo "file doesn't exist cannot transfer the data from existing file to new file"
fi

