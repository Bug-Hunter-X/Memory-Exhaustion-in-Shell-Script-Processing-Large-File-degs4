#!/bin/bash

# This script demonstrates a more efficient way to process a large file by reading it line by line.

FILE_SIZE=$((1024 * 1024 * 100)) # 100MB file

# Create a large dummy file
head /dev/urandom | tr -dc A-Za-z0-9\n | head -c $FILE_SIZE > large_file.txt

# Efficiently process the file line by line
line_count=0
while IFS= read -r line; do
  line_count=$((line_count + 1))
done < large_file.txt

# Print the number of lines
echo "Number of lines: $line_count"

# Clean up
rm large_file.txt