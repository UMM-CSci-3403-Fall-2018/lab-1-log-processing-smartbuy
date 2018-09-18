#!/bin/bash

# Create pass call
here=$(pwd)

# Change to correct directory
cd $1

# Sort and count the hours and number of failed login attempts
cat */failed_login_data.txt | awk ' { print $3 } ' > hour.txt
sort hour.txt > sorted_hour.txt
uniq -c sorted_hour.txt | awk '{ print "data.addRow([\x27"$2"\x27, "$1"]);" }' > hour_temp.txt

# Run wrap_contents.sh
$here/bin/wrap_contents.sh hour_temp.txt $here/html_components/hours_dist hours_dist.html
