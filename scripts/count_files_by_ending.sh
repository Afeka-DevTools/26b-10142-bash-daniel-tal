#!/bin/bash

read -p "Enter the directory path (e.g., /path/to/dir, or . for current directory): " target_dir

if [ ! -d "$target_dir" ]; then
    echo "Error: The directory '$target_dir' does not exist."
    exit 1
fi

read -p "Enter the file ending to count (e.g., .txt, .sh, or log): " file_ending

if [ -z "$file_ending" ]; then
    echo "Error: No file ending entered. Exiting."
    exit 1
fi

echo "Scanning '$target_dir'..."
echo "--------------------------------------"

file_count=$(find "$target_dir" -maxdepth 1 -type f -name "*$file_ending" 2>/dev/null | wc -l)

echo "✅ Found $file_count file(s) ending with '$file_ending' in '$target_dir'."
echo "--------------------------------------"