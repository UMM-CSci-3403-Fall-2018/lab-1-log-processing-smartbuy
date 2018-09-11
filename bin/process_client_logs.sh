#!/bin/bash

# This is directory

# Change to correct directory
cd $1

# Create temp.txt
cat var/log/secure* > temp.txt

# Clean all data to include only relevent lines
awk '/Failed password for/ { print $0 }' < temp.txt > temp_clean.txt

# Gets date and hour info and name
sed -r 's/(:+.+)(user )/ /' < temp_clean.txt > temp_date.txt

# Gets IP
sed -r 's/\s+from+\s/ /' < temp_date.txt > temp_from.txt
sed -r 's/\s+port+.+//' < temp_from.txt > failed_login_data.txt

# Cleanup
rm temp.txt
rm temp_clean.txt
rm temp_date.txt
rm temp_from.txt
