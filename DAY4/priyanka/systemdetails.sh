#!/bin/bash
echo -e "\n"
echo "=====SYSTEM REPORT===="
echo -e "\n"
echo "Your system hostname is: $(hostname)"
echo "The logged in users are: "
who
echo "The date and time is: $(date)"
echo "======================"
