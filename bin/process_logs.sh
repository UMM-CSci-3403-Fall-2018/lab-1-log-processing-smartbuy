#!/bin/bash

# Directory
here=$(pwd)

# Move to logfiles directory
cd $here/log_files

# Loop for extracting contents
#create tempolary folder for each extracted tar files
#extrac to that directoly
for file in $@
do
	tempfolder=$(mktemp -d)
	tar -xvf $file $tempfolder
	
done

$here/bin/process_client_logs.sh $here/log_files
$here/bin/create_username_dist.sh $here/log_files
$here/bin/create_hours_dist.sh $here/log_files
$here/bin/create_country_dist.sh $here/log_files
$here/bin/assemble_report.sh $here/log_files
