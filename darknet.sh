#!/usr/bin/env bash

set -eu
set -v

command="$1"
config="$2"
weights="$3"

output_opt="$4"
output_path="$5"

# Read file from stdin
cat - > /tmp/image

./darknet "$command" "$config" "$weights" /tmp/image "$output_opt" "$output_path"
