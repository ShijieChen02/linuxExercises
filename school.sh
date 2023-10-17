#!/bin/bash

# (a) Download the property tax data file
wget http://pages.stat.wisc.edu/~jgillett/DSCP/linux/Property_Tax_Roll.csv

# (b) Process the data with a pipeline
cat Property_Tax_Roll.csv | grep "MADISON SCHOOLS" | cut -d ',' -f 7 | {
    sum=0
    count=0
    while read value; do
        sum=$((sum + value))
        count=$((count + 1))
    done
    average=$(echo "scale=2; $sum / $count" | bc)
    echo "Average TotalAssessedValue for properties in MADISON SCHOOLS district: $average"
}
