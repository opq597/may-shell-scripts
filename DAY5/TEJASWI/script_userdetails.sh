#!/bin/bash
user_name="$1"
a=$(grep -i "$user_name" data.txt)
if [ -z "$a" ]
then 
	echo " $user_name not found in database"
fi
if [ -n "$a" ]
then
	echo "--- ----------------------------------------------" 
	echo " \n------------ USER-DETAILS---------------------- \n"
	echo "USERNAME"  
	grep -i  "$user_name" data.txt | awk -F ":" '{print $1}'
       	echo "USER_ID " 
	grep -i  "$user_name" data.txt |awk -F ":" '{print $2}'
       	echo "USER MAIL_ID" 
       	grep -i  "$user_name"  data.txt |awk -F ":" '{print $3}' 
	echo "PHONE NUMBER" 
	grep -i   "$user_name" data.txt |awk -F ":" '{print $4}' 
	echo "---------------------------------------------------"
fi
