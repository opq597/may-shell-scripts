#!/bin/bash

#function for upper-case
upper(){
char="$1"
echo "${char^^}"
}

#read input string
read -p "Enter a string: " str

echo $str | grep -q "[a-z]"
if [ $? -ne 0 ]
then
	echo "Given input is not a string "
	exit 1
else

        len=${#str}
        res=""
        for (( i=0; i<len; i++ ))
        do

	        ch="${str:$i:1}"
	        upper_ch=$(upper $ch)
	        res+="$upper_ch"
	done
fi

echo "Upper case: $res"

