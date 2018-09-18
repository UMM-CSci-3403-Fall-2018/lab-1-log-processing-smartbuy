#!/bin/bash

# Directory
here=$(pwd)

# Move to temporary directory
cd $1

# Merge html file to a single html
cat username_dist.html hours_dist.html country_dist.html > final.html

# Wrap
$here/bin/wrap_contents.sh final.html $here/html_components/summary_plots failed_login_summary.html
