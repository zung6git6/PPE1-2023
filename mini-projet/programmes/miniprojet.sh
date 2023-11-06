#!/usr/bin/env bash
file_path="$1"

if [ $# -ne 1 ]; then
    echo "Il faut un argument qui est le nom complet du fichier texte"
else
    number=1
    while read -r line; 
    do
        code_HTTP=$(curl -sI $line | egrep -w -o 'HTTP/[0-9]\.?[0-9]? ([0-9]{3})' | sed -re 's/HTTP\/[0-9]\.?[0-9]? (([0-9]{3}))/\1/g')
        codage=$(curl -sI $line | egrep "charset=" | sed -re 's/content-type: text\/html; charset=//g')
        echo "$number   $line   $code_HTTP  $codage"
        number=$(expr $number + 1)
    done < "$file_path"
fi