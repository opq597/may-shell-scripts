#!/bin/bash
cat date.txt >>backup.txt
echo "today's date ---- $(date) ">> backup.txt
cat backup.txt

