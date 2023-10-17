#!/bin/bash

# Initialize a variable to store the sum
sum=0

# Loop through the numbers from 1000 to 2000
for number in {1000..2000}; do
    # Use a regular expression to check if the number contains only 0s and 1s
    if [[ $number =~ ^[01]+$ ]]; then
        # If the number meets the condition, add it to the sum
        sum=$((sum + number))
    fi
done

# Print the sum
echo "Sum of numbers between 1000 and 2000 with only digits 0 and 1: $sum"
