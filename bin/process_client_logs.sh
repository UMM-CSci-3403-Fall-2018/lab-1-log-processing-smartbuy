#!/bin/bash

dir = $1
name = $2

cd /lab-1-log-processing-smartbuy/log_files
tar -xcf $2_secure.tgz $1

# or *_secure

rm `grep '(:\d+)'` > failed_login_data.txt
