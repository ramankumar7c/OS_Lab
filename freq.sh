#!/bin/bash

# Check if the file exists
if [ ! -f "/home/raman/Desktop/OS/Lab4/words.txt" ]; then
    echo "Error: words.txt not found."
    exit 1
fi

# Use tr to replace spaces with newlines, sort the words, and use uniq to count occurrences
# Finally, use awk to print word frequency
tr -s ' ' '\n' < words.txt | sort | uniq -c | awk '{print $2, $1}'

