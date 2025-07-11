#!/bin/bash
echo “enter specific word ‘error’ appears in a given file”
grep -o "error" file1.txt | wc -l

