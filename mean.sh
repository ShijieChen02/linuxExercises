#!/bin/bash

if [ $# -lt 1 ] || [ $# -gt 2 ]; then
    echo "usage: ./mean.sh <column> [file.csv]" >&2
    exit 1
fi

column=$1

if [ $# -eq 1 ]; then
    file="/dev/stdin"
else
    file=$2
fi


cut -d ',' -f "$column" "$file" | tail -n +2 | {
    sum=0
    count=0
    while IFS= read -r line; do
        sum=$(echo "$sum + $line" | bc)
        count=$((count + 1))
    done
   
