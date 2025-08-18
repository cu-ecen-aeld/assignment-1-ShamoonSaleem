#!/bin/sh
# Script for assignment 1
# Author: Muhammad Shamoon Saleem

writefile=$1
writestr=$2

path=$(dirname $1)
filename=$(basename $1)
echo $writefile
echo $writestr
echo $path
echo $filename

echo "You provided $# arguments."
######################################################################################
# Exit if not enough or too many arguments
if [ $# -le 1 ]; then
	echo "Not enough arguments"
	exit 1
elif [ $# -gt 2 ]; then
	echo "Too many arguments"
	exit 1
fi
#######################################################################################
echo
if [ -f "$filename" ] && [ -d "$path" ];then
    echo "The File and Directory exist -- $1"
else
    echo "File and directory do not exist-- $1 , will be created"
    mkdir -p $path
    touch $1
    if [ -f "$1" ] ;then
     	echo "File and directory created"
     	##exit 0
    else 
    	echo "Failed: File not created "
        return 1
    fi      
fi
#########################################################################################
echo "Copying data"
echo $2 > $1
if [ -f "$1" ] && [ -d "$path" ];then
    echo "Data transfer to $1 has been successfull"
    return 0
else
    echo "Failed: cannot create file $1 "
    exit 1   
fi
#########################################################################################
