#!?bin/bash
#script to print grade based on marks. A >80, B: 60 -80, C: <60
#taking marks input from the user
read -p "Enter your marks: " mark

#verifying if the input is more than 100 or special characters or alphabets
if [[ $mark -gt 100 || ! $mark =~ ^[0-9]+$ ]]; then
	#printing that it is invalid input
	echo -e "Please enter valid input!!! \n Aborting...."
	exit 1
else
#verifying if the marks is more than 80 or between 80 and 60 or less than 60
if [ $mark -gt 80 ]; then
	echo "Congrats! you have secured Grade 'A' by scoring $mark" 
elif [ $mark -le 80 ] && [ $mark -gt 60 ]; then
	echo "Congrats! You have secured Grade 'B' by scoring $mark"
else 
	echo "Congrats! You have scored Grade 'C' by scoring $mark"
fi
fi
