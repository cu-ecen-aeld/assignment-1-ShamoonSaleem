#!/bin/sh
# Script for assignment 1
# Author: Shamoon Saleem

writefile=$1
writestr=$2

echo $writefile
echo $writestr

echo "You provided $# arguments."
######################################################################################
# Exit if not enough or too many arguments
if [ $# -le 1 ]; then
	echo "Not enough arguments"
	exit
elif [ $# -gt 2 ]; then
	echo "Too many arguments"
	exit
fi
#######################################################################################
echo 
echo
if [ -f "$1" ] || [ -d "$1" ];then
    echo "The First argument is a file or directory"
    #exit 0
else
    echo "failed: expected a path but not found File do not exist"
    #exit 0  
fi
#########################################################################################
echo
echo $2 > $1
if [ -f "$1" ] || [ -d "$1" ];then
    echo "TheFile $1 has been created "
    #exit 0
else
    echo "failed: ecannot create file $1 "
    exit 1   
fi
#########################################################################################
