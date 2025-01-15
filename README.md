# Shell Script Memory Management Bug

This repository demonstrates a common error in shell scripting: attempting to process very large files by reading the entire content into memory at once. This approach is inefficient and can lead to memory exhaustion, causing the script to crash or become unresponsive.

## Bug Description
The `bug.sh` script attempts to read a 100MB file into memory using a single variable.  For smaller files this might work, but with larger files, this will cause the script to fail due to exceeding available memory.

## Solution
The `bugSolution.sh` script demonstrates a more robust approach by processing the file line by line using a `while` loop. This avoids loading the entire file content into memory, making it suitable for handling files of arbitrary sizes.

## How to reproduce
1. Clone this repository
2. Run `bug.sh` (it will likely fail or be extremely slow with large files)
3. Run `bugSolution.sh` (this will process the file efficiently)