#!/bin/bash

#Script Name: check_directory.sh
#Author: Gina Hobbs
#Date of last revision: 31 January 2022
#Description of purpose: 
#Declaration of variables: 
#Declaration of functions (if used):
#Main

echo "do you want to check for a file or a directory? (Enter 1 for directory, 2 for file)"
read file_type

if [[ file_type == "1" ]]; then
    echo "Please enter the name of the directory you want to check"
    read file_name
else
    echo "Please enter the name of the file you want to check"
    read file_name
fi

if test -e ./"$file_name"; then 
    if test -f ./"$file_name"; then
        echo "File detected. If you are trying to create a directory then delete the file and re-run this program"
    else
        echo "Directory detected. If you are trying to create a file then delete the directory and re-run this program"
    fi
else
    if [[ "$file_type" == "1" ]]; then
        echo "Directory not detected. Created directory $file_name" 
        mkdir $file_name
    else
    echo "File not detected. Created file $file_name"
        touch $file_name
    fi
fi

#End

#10 employees, read in their files to check if it exists, 
#start with an array that has the stuff in it