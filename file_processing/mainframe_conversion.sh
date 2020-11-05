#!/bin/bash
# Commands to convert mainframe file to ASCII

# Command to convert mainframe file to ASCII
iconv -f EBCDIC-ES -t ASCII [target_file] -o [outputfile]

# Replace repeated spaces with a single occurence of space in the text file
tr -r " " < [target file] > [output.txt file]

# Remove leading and trailing spaces for each row, in addition to squeezing of tabs and spaces into single space
awk '{$1:$1};1' < [targetfile] > [output.txt file]
