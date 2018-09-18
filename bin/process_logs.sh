#!/bin/bash

# Directory
here=$(pwd)

# Move to temp directory
cd $1

# Loop for extracting contents
for file in cscirepo_secure.tgz discovery_secure.tgz ganesha_secure.tgz mylar_secure.tgz velcro_secure.tgz zeus_secure.tgz
do
	tar -xvf $file 
done

$here/bin/process_client_logs.sh 
