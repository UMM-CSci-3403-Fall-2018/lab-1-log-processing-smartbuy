#!/bin/bash

# Directory
here=$(pwd)

# Move to temp directory
cd $here/log_files

# Loop for extracting contents
for file in cscirepo_secure.tgz discovery_secure.tgz ganesha_secure.tgz mylar_secure.tgz velcro_secure.tgz zeus_secure.tgz
do
	tempfolder=$(mkdir)
	tar -xvf $file -C /$tempfolder
done



$here/bin/process_client_logs.sh 
