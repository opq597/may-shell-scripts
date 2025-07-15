#!/bin/bash
# Function to find factorial of a number
fact()
{
     echo "enter a number"
   read n
    fact=1
   while [ $n -gt 0 ]
   do
        fact=$(($fact * $n))
        n=$(($n - 1))
    done
    echo "factorial of "$1" is $fact"
}
fact

