#!/bin/bash

# This is directory

# Change to correct directory
cd $1

# Create temp.txt
cat var/log/secure* > temp.txt

# Clean all data to include only relevent lines
awk '/Failed password for/ { print $0 }' < temp.txt > temp_clean.txt

# Cleanup
# rm temp.txt
