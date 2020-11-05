#!/bin/bash
# Example commands to filter large pipe delimited (|) file in the terminal

#show first row
head -1 [filename]

# Criteria 1 - Substring of 8th ($8) column must equal to 000, starting at postion 1 with length 3
# Criteria 2 - Substring of 2nd ($2) column must equal to 111, starting at postion 9 with length 3
# Then print entire line ($0) and perform row count

# OR-condition represented by ||
awk -F '|' '{ if (substr($8,1,3)=="000" || substr($2,9,3)=="111") {print $0} }' [textfilename] | wc -l

# AND-condition is represented by &&
awk -F '|' '{ if (substr($8,1,3)=="000" && substr($2,9,3)=="111") {print $0} }' [textfilename] | head -2
