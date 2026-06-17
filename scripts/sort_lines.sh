#!/bin/bash

read -p "Enter the path of the file to sort (e.g., list.txt): " input_file

if [ ! -f "$input_file" ]; then
    echo "Error: The file '$input_file' does not exist."
    exit 1
fi

read -p "Enter the path for the sorted output file (e.g., sorted_list.txt): " output_file

if [ -z "$output_file" ]; then
    echo "Error: No output file specified. Exiting."
    exit 1
fi

echo "Sorting '$input_file' alphabetically..."
echo "--------------------------------------"

sort "$input_file" > "$output_file"

if [ $? -eq 0 ]; then
    echo "✅ Success! Sorted content has been saved to '$output_file'."
else
    echo "❌ An error occurred during sorting."
fi
echo "--------------------------------------"