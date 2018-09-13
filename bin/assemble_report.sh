#!/bin/bash

# Directory
here=$(pwd)

# Move to temporary directory
cd $1

# Merge html file to txt
cat username_dist.html hours_dist.html country_dist.html > temp.txt

# Wrap
$here/bin/wrap_contents.sh temp.txt $here/html_components/summary_plots_header.html $here/html_components/summary_plots_footer.html failed_login_summary.html
