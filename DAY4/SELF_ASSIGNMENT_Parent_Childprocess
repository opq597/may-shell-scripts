#!/bin/bash

echo " ENTER CHILD PROCESS PID"
read pid
echo " PARENT PROCESS ID IS "
ps -ef |awk '$2==pid {print $3}' pid="$pid"
