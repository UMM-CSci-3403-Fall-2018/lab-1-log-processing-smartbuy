#!/bin/bash

# Create pass call
here=$(pwd)

# Change to correct directory
cd $1

# Pulling IPs
cat */failed_login_data.txt | awk ' { print $5 } ' > ip.txt

# Sorts IPs
sort ip.txt > sorted_ip.txt

# Match country code to ip then pull country
join sorted_ip.txt $here/etc/country_IP_map.txt | awk ' { print $2 } ' > country.txt

# Sort countrys
sort country.txt > sorted_country.txt

# Count country then prep for wrap_contents.sh
uniq -c sorted_country.txt | awk '{ print "data.addRow([\x27"$2"\x27, "$1"]);" }' > temp.txt

# Run wrap_contents.sh
$here/bin/wrap_contents.sh temp.txt $here/html_components/country_dist country_dist.html
