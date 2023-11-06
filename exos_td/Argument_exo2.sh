#!/bin/bash

echo "Entrez l'année : "
read Annee

file_path="../Fichiers_triés/ANN/$Annee"

if [ -n "$Annee" ]
then
    while [[ $Annee =~ 201[678] ]];
    do
        search_result=$(cat $file_path/*.ann | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head -10)
        echo "Your search result is:
        $search_result"
        break
    done
else
    echo "Vous n'avez rien entré."
fi
exit