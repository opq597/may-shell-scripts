#!/bin/bash
echo " TOP 10 PROCESS WITH HIGH CPU UTILISATION"
ps aux |head -n 11 |sort -rk3 | awk -F" " '{print $0} '

echo "\n \n \n \n "
echo "-------------------------------------------"
echo " TOP 10 PROCESS WITH HIGH PROCESS UTILISATION"

ps aux |head -n 11 |sort -rk4 | awk -F" " '{print $0} '


echo "---------------------------------------------"

