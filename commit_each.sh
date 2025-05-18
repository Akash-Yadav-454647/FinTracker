#!/bin/bash

cd "$(git rev-parse --show-toplevel)"

find . -type f ! -path "./.git/*" | while read file; do
    git add "$file"
    git commit -m "Add file: $file"
done
