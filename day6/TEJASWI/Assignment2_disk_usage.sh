#!/bin/bash
a=$(df -h |sed 's/%//g' |awk -F " " 'NR>1 && $5>80 {print $5}'|head -n 1)
if [ -n "$a" ]
then
	echo "WARNING : DISK USAGE IS MORE THAN 80 PERCENT"
        mail -s "DISK USAGE --WARNING MORE THAN 80 PERCENT " ubuntu
else
	echo " DISK USAGE --NORMAL "
fi
