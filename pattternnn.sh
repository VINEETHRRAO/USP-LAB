#!/bin/sh
file_name=$1
pattern=$2
echo "Number of Matches = "
grep -o $pattern $file_name| wc -l
