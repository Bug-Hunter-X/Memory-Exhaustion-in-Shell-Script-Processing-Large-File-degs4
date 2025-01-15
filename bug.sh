#!/bin/bash

# This script attempts to process a large file, but it fails due to a poorly handled memory allocation.

FILE_SIZE=$((1024 * 1024 * 100)) # 100MB file

# Create a large dummy file
head /dev/urandom | tr -dc A-Za-z0-9\n | head -c $FILE_SIZE > large_file.txt

# Attempt to read the entire file into memory (inefficient and prone to errors)
file_content=$(cat large_file.txt)

# Process the content (this will likely fail for large files)
echo "File content length: "

# The below line is problematic due to potential memory exhaustion
# This script could lead to memory exhaustion for very large files. 
echo "${#file_content}"

# Clean up
rm large_file.txt