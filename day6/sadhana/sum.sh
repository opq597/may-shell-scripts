#!/bin/bash
#fucntion to find the sum of numbers from 1 to N
sum()
{
        echo "enter the number"
        read n
        sum=1
        while [ $n -gt 1 ]
        do
         sum=$(( $sum + $n ))
         n=$(($n-1))
        done
        echo "" sum is $sum
}
sum

