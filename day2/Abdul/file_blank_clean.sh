#!/bin/bash
#Script to remove the blank lines and create the cleaned file
read -p "Enter the filename" log_file
log_file="$log_file"

# Check if the file exists
if [ ! -f "$log_file" ]; then
    echo "Error: File '$log_file' not found."
    exit 1
fi

# Create a new filename for the cleaned log
cleaned_file="${log_file}_cleaned.${log_file}"

# Remove blank lines and write to the new file
grep -v '^[[:space:]]*$' "$log_file" > "$cleaned_file"

echo " Cleaned log file created: $cleaned_file"
