#!/bin/bash
echo "count the number of .sh files present in current directory"
find -maxdepth 1 -type f -name "*.sh" | wc -l

