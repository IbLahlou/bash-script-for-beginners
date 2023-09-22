#!/bin/bash

# Create output directory if it doesn't exist
mkdir -p out

# Convert file from DOS to Unix format
dos2unix ../data/number.txt

# Read file into array
numbers=($(cat ../data/number.txt))

# Initialize output files
echo -n "" > out/less10.txt
echo -n "" > out/more10.txt

# Filter numbers and write to files
for num in ${numbers[@]}; do
  if (( num < 10 )); then
    echo $num >> out/less10.txt
  elif (( num > 10 )); then
    echo $num >> out/more10.txt
  fi
done

echo "Numbers less than 10 have been written to out/less10.txt"
echo "Numbers more than 10 have been written to out/more10.txt"
