#!/bin/bash

# dir = $1
# name = $2
# cd /lab-1-log-processing-smartbuy/log_files

cd $1

cat var/log/* > temp.txt

# Regex removal
sed -nr 's/[:\d+:\d+\s+\w+\s+\w+\[+\d+\]+:+\s+\w+\s+\w+\s+\w+\s+\w+\s+\w+\s]/ /' < temp.txt > temp.txt
sed -nr 's/ from / /' < temp.txt > temp.txt
sed -nr 's/[\s+\w+\s+\d+\s+\w+]//' < temp.txt > failed_login_data.txt

# Cleanup
rm temp.txt
