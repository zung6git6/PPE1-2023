#!/usr/bin/env bash

echo "Provide your source file"
read entree

echo "Provide your destination file"
read sortie

tr -d '\n' < "$entree" | tr -s '[:punct:]' ' ' | tr -s ' ' '\n' > "$sortie"