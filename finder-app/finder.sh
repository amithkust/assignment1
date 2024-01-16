#!/bin/sh
# Tester script for assignment 1 
# Author: Amit Kumar
if [ $# -eq 2 ]
then
	if [ -d $1 ]
	then
		echo $1
		echo $2
		cd $1
		Y=$(grep -o -r $2 | wc -l)
		X=$(find -type f | wc -l)
		#X=$(tree . | wc -l)
		echo "The number of files are $X and the number of matching lines are $Y"		
	else
		echo "Error : the given dir arg1 is incorrect"
		exit 1
	fi	
else
        echo "Error : the given arguments are not 2 "
	exit 1 
fi

