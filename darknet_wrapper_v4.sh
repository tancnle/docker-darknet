#!/usr/bin/env bash

set -eu
set -v

command="$1"
subcommand="$2"
data="$3"
config="$4"
weights="$5"

input_path="/tmp/image"
output_path="/output"

# Read file from stdin
cat - > "$input_path"

echo "$config"
echo "$weights"
echo "$output_path"

./darknet "$command" "$subcommand" "$data" "$config" "$weights" "$input_path"

# By default, darknet outputs to `predictions.{jpg,png}`
find . -type f \( -name "predictions.jpg" -o -name "predictions.png" \) -exec cp -v {} "$output_path" \;
