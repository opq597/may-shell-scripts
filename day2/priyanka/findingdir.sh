#!/bin/bash

#add comments

read -p "Enter directory path: " dir
if [ -d "$dir" ]; then
    count=$(find "$dir"  -type f -name "*.log" | wc -l)
    echo "The directory '$dir' contains $count .log file(s)."
else
    echo "Directory '$dir' does not exist."
fi
