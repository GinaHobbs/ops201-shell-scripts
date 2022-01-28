#!/bin/bash

#Script Name: Hello World
#Author: Gina Hobbs
#Date of last revision: 28 January 2022
#Description of purpose: create an array of directories and place an empty .txt file in each
#Declaration of variables: directories, 
#Declaration of functions (if used):
#Main

mkdir dir1 dir2 dir3 dir4

directories=("dir1" "dir2" "dir3" "dir4")

touch ./${directories[0]}/new1.txt
touch ./${directories[1]}/new2.txt
touch ./${directories[2]}/new3.txt
touch ./${directories[3]}/new4.txt

#End