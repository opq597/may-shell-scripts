#!/bin/bash

if [ $# -ne 1 ];
then
    echo "Usage: $0 <filename>"
    exit 1
fi

FILE="$1"

# Check if the file exists
if [ ! -f "$FILE" ]; then
    echo "Error: File '$FILE' not found."
    exit 1
fi

# Extract usernames where age is 35
awk '$2 == 35 { print $1 }' "$FILE"


