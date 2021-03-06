#!/bin/bash

# Create pass call
here=$(pwd)

# Change to correct directory
cd $1

# Sort and count the number of user and output to temp.txt
cat */failed_login_data.txt | awk ' { print $4 } ' > user.txt
sort user.txt > failed_login_data2.txt
uniq -c failed_login_data2.txt | awk '{ print "data.addRow([\x27"$2"\x27, "$1"]);" }' > usertemp.txt

# Run wrap_contents.sh 
$here/bin/wrap_contents.sh usertemp.txt $here/html_components/username_dist username_dist.html
