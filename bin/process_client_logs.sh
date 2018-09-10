#!/bin/bash

dir = $1

cd $1
cat var/log/* > temp.txt
sed -nr 's/[:\d+]//g' < temp.txt > failed_login_data.txt
rm temp.txt
