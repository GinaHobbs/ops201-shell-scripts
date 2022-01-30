#!/bin/bash

#Script Name: Hello World
#Author: Gina Hobbs
#Date of last revision: 28 January 2022
#Description of purpose: display running processes, ask the user for a PID, then kill it.
#Declaration of variables: pid, user_input, 
#Declaration of functions (if used):print_pid, kill_pid,
#Main

print_pid () {
    ps aux
}

kill_pid () {
    user_input=y
    until [ $user_input = "n" ]
    do 
        echo "Please input the PID of the task you want to kill"
        read pid
        sudo kill -9 "$pid"
        echo "Is there another task you want to kill? (y/n)"
        read user_input
    done
}

print_pid
kill_pid
print_pid

#End