#!/bin/bash
read -p "Enter your input: " ip
if  echo "$ip" | grep -E '^[+-]?[0-9]+$'; then
    echo "$ip is an integer."
else
    echo "$ip is NOT an integer."
fi

