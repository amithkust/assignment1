#!/bin/sh
# Tester script for assignment 1 
# Author: Amit Kumar
writefile=$1
writestr=$2
if [ $# -eq 2 ]
then
        touch $1
        echo "File creating with $2"
	echo $2 > $1	
else
        echo "Error : the given arguments are not 2 "
	exit 1 
fi


