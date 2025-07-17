#!/bin/bash

size=`df -h | awk -F " " '{print($(NF-1))}' | sed -n 2p | cut -d "%" -f1`

if [ $size -gt 90 ]
then
	echo "WARNING : DISK USAGE IS MORE THAN 90 PERCENT"
        echo "Content: Disk usage is more than 90%" | mail -s "DISK USAGE --WARNING" ubuntu
	echo "Email notification has been sent"
else
	echo "Disk Usage is below 90%"
fi

