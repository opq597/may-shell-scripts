#!/bin/bash
cat file.txt >> backup.txt
echo “todays date------$(date)”>> backup.txt
cat backup.txt

