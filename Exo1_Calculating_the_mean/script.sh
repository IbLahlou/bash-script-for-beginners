#!/bin/bash

# Convert file from DOS to Unix format
dos2unix ../data/number.txt

# Read file into array
numbers=($(cat ../data/number.txt))

# Calculate sum
sum=0
for num in ${numbers[@]}; do
  sum=$(echo "$sum + $num" | bc)
done

# Calculate mean
mean=$(echo "scale=2; $sum / ${#numbers[@]}" | bc)

echo "The mean is: $mean"
