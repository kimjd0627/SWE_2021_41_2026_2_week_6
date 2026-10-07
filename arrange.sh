#!/bin/bash

for file in files/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        first_char=$(echo "$filename" | cut -c1)
        first_char=$(echo "$first_char" | tr 'A-Z' 'a-z')
        mv "$file" "$first_char/"
    fi
done