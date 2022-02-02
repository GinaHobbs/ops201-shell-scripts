#!/bin/bash

#Script Name: lshw.sh
#Author: Gina Hobbs
#Date of last revision: 28 January 2022
#Description of purpose: run lshw and use grep to show only CPU and RAM
#Declaration of variables:
#Declaration of functions (if used):
#Main

# sudo lshw
echo "CPU"
sudo lshw -class cpu | grep -e 'product' -e 'vendor' -e 'physical id' -e 'bus info' -e 'width'
echo "Memory"
sudo lshw -class memory | grep -e 'description' -e 'physical id' -e 'size'
echo "Display"
sudo lshw -class display | grep -v 'version'
echo "Network"
sudo lshw -class network  

#End