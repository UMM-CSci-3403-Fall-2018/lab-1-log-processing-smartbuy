#!/bin/bash

# Change to correct directory
cd $1

awk ' { print $4 } ' < failed_login_data.txt > user.txt
sort user.txt > failed_login_data2.txt
uniq -c failed_login_data2.txt | awk '{ print $2, $1 }' > temp.txt

# Cleanup
# rm failed_login_data2.txt
# rm user.txt

