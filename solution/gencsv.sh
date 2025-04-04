#!/bin/bash

# Check for the correct number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: ./gencsv.sh <start_index> <end_index>"
    exit 1
fi

start_index=$1
end_index=$2

# Generate the inputFile
> inputFile  # Clear the file if it exists

for ((i=start_index; i<=end_index; i++))
do
    random_number=$((RANDOM % 1000))
    echo "$i, $random_number" >> inputFile
done

echo "inputFile generated with indices from $start_index to $end_index"

