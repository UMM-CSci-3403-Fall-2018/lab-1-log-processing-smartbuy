#!/bin/bash

# Directory
here=$(pwd)

# Move to temporary directory
cd $1

# Merge 3 html file to temp.html
cat country_dist.html hours_dist.html username_dist.html > temp.html

# Wrap
$here/bin/wrap_contents.sh temp.html $here/html_components/summary_plots $1/failed_login_summary.html

