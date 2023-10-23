#!/bin/bash

echo "Entrez l'année : "
read Annee

file_path="../Fichiers/ANN/$Annee"

if [ -n "$Annee" ]
then
    if [[ $Annee =~ 201[678] ]]
    then
        search_result=$(cat "$file_path"/*.ann | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head -10)
        echo "Your search result is:
        $search_result"
    else
        echo "Année inexistante"
    fi
else
    echo "Vous n'avez rien entré."
fi
exit