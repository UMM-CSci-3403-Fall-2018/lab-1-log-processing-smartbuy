#!/bin/bash

# Directory
here=$(pwd)

# Move to temp directory
cd $here/log_files

# Loop for extracting contents
for file in $@
do
	tempfolder=$(mktemp -d)
	tar -xvf $file -C $tempfolder
	

done

$here/bin/process_client_logs.sh 
$here/bin/create_username_dist.sh
$here/bin/create_hours_dist.sh
$here/bin/create_country_dist.sh
$here/bin/assemble_report.sh
