#!/bin/bash
if [ -f "$1" ]; then
        echo "Analyzing file: $1"
        echo "Lines: $(wc -l < "$1")"
	echo "Words: $(wc -w < "$1")"
        echo "Characters: $(wc -c < "$1")"
    else
        echo "File '$1' does not exist."
    fi

# Check if filename is provided as argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 filename"
    exit 1
fi

