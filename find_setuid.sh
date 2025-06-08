#!/bin/bash

# Script to find all SETUID binaries on the system

echo "Searching for SETUID binaries. This may take some time..."
echo "---------------------------------------------------------"

# The core command
# /: Search from the root directory
# -perm -4000: Look for files with the SETUID bit set
# -type f: Only consider regular files (not directories)
# -exec ls -l {}: Execute 'ls -l' for each found file
# {}: Placeholder for the found filename
# \;: Terminates the -exec command
# 2>/dev/null: Suppress permission denied errors

find / -perm -4000 -type f -exec ls -l {} \; 2>/dev/null

echo "---------------------------------------------------------"
echo "Search complete."
