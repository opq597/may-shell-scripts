#!/bin/bash
#FILE TO STORE USER DATA AND ALSO TO RETRIEVE USER DETAILS
echo "Enter a filename:"
read file_name
#CHECK IF FILE EXISTS OR NOT
if [ -f "$file_name" ]
then
	echo "FILE Exists in the directory "
else
	echo " FILE does not exist"
	echo " Creating new file with $file_name "
	touch "$file_name"
	echo "username:user_id:mail_id:phone_no" >> "$file_name"
fi

#TO WRITE USER INFO INTO A FILE
while true
do
        echo "ENTER USERNAME [ONLY IN CAPITALS] ----------- TO STOP ADDING ANOTHER  USER -->PRESS ENTER"
        read user_name
        if [ -n "$user_name" ]
        then
                echo "ENTER USERID"
                read user_id
                echo "ENTER MAIL-ID"
                read mail_id
                echo "ENTER PHONE_NO"
                read phone_no
                echo "$user_name:$user_id:$mail_id:$phone_no" >> "$file_name"
        else 
                break
        fi

done

#TO GET USER DETAILS FROM THE FILE
 echo "ENTER USERNAME TO KNOW THE DETAILS OF THE USER:"
 read user_name
 echo "--- ----------------------------------------------" >>File2.txt
 echo " \n------------ USER-DETAILS---------------------- \n">>File2.txt
 echo "USERNAME" >> File2.txt
 grep "$user_name" "$file_name"|awk -F ":" '{print $1}' >> File2.txt
 echo "USER_ID " >>File2.txt
 grep "$user_name" "$file_name"|awk -F ":" '{print $2}'>> File2.txt
 echo "USER MAIL_ID" >> File2.txt
 grep "$user_name" "$file_name"|awk -F ":" '{print $3}' >>File2.txt
 echo "PHONE NUMBER" >>File2.txt
 grep "$user_name" "$file_name"|awk -F ":" '{print $4}' >>File2.txt
 echo "---------------------------------------------------">>File2.txt
 echo " CONTENT OF NEW FILE"
 cat File2.txt

