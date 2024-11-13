#!/bin/bash
input_file="heart.csv"
output_file="question4_c.csv"

if [[ ! -f "$input_file" ]]; then
  echo "Input file not found!"
  exit 1
fi

(head -n 1 "$input_file" && awk -F',' '$8 == 0' "$input_file") > "$output_file"

echo "Rows with HeartDisease value as 0 have been saved to $output_file."

