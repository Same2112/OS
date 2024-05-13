#!/bin/bash

directory="./texts"

string="Пушкин"

folder=$(find "$directory" -type f -name "*.txt")

files=$(mktemp)

for file in $folder; do
        if grep -l "$string" "$file" ;then
                echo "$file" >> "$files"
        fi
done

mv "$files" list.txt