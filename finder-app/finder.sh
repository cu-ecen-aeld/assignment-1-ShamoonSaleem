#!/bin/sh
# Script for assignment 1
# Author: Shamoon Saleem

filesdir=$1
searchstr=$2

echo $filesdir
echo $searchstr

echo "You provided $# arguments."
####################################################################################################
# Exit if not enough or too many arguments
if [ $# -le 1 ]; then
	echo "Not enough arguments"
	exit 1
elif [ $# -gt 2 ]; then
	echo "Too many arguments"
	exit 1
fi
#####################################################################################################
echo
if [ -f "$1" ] || [ -d "$1" ];then
    echo "The First argument is a file or directory"
else
    echo "Failed: expected a path but not found"
    exit 1   
fi
#####################################################################################################
#Counting files under given directory
echo
echo "Files in directory and sub directories are "
TotalFilesinDirector=$(find $filesdir -type f | wc -l)
echo $TotalFilesinDirector
#####################################################################################################
echo "Matching lines"

echo ${filesdir} | grep -r "$searchstr"
echo
##echo ${filesdir} | grep -o "$searchstr"

echo "Total number of matching lines"
TotalMatchingLines=$(${filesdir} | grep -r "$searchstr" * | wc -l)
echo $TotalMatchingLines

echo "The number of files in directory are $TotalFilesinDirector and the number of matching lines are $TotalMatchingLines "
######################################################################################################
