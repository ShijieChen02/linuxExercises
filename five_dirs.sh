#!/bin/bash

# Create the 'five' directory
mkdir -p five

# Loop through numbers from 1 to 5 to create subdirectories
for i in {1..5}; do
    subdir="five/dir$i"
    mkdir -p "$subdir"
    
    # Loop through numbers from 1 to 4 to create files with appropriate content
    for j in {1..4}; do
        filename="$subdir/file$j"
        
        # Use printf to create the content for each file
        printf "%s\n" $(seq -s "$j" "$j") > "$filename"
    done
done