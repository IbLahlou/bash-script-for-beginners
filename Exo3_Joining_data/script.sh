#!/bin/bash

# Convert CSV files to Unix format
dos2unix ../data/table1.txt
dos2unix ../data/table2.txt

# Initialize output file with header
echo "id,firstname,lastname,mark,parent_tel" > output.txt

# Read students file line by line (duh)
while IFS=, read -r id firstname lastname mark parent_id
do
  # Check if mark is less than 15
  if (( mark < 15 )); then
    # Find corresponding parent in parents file
    while IFS=, read -r p_id parent_tel fathername mothername
    do
      if (( parent_id == p_id )); then
        # Write student and parent_tel to output file
        echo "$id,$firstname,$lastname,$mark,$parent_tel" >> output.txt
        break # Exit the loop once the matching parent is found
      fi
    done < ../data/table2.txt
  fi
done < ../data/table1.txt

echo "Output has been written to output.txt"
