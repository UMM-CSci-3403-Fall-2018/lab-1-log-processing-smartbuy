#!/bin/bash

# Take input $1 is file name, $2 is header and footer, and $3 is output file
#cat $2_header.html
#echo $1
#cat $2_footer.html
#echo $3
cat $2_header.html $1 $2_footer.html > $3
