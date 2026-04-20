#!/usr/bin/env bash

# Directories to search
dirs=(articles tasks concepts glues references)

# The string to search for
pattern="https://documentation.suse.com/"

# Loop through each directory and grep recursively
for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "Searching in $dir/..."
    grep -R --color=always -n "$pattern" "$dir" || echo "No matches in $dir/"
  else
    echo "Directory $dir/ not found."
  fi
done
