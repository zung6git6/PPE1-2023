#!/bin/bash

echo "Entrez une année parmi 2016, 2017 et 2018 : "
read year

file_path="../Fichiers/ANN/$year/*.ann"

if [ -n "$year" ]
then
    if [[ $year=~201[678] ]]
    then
        echo "vous avez entré : $year"
        search_result=$(cat $file_path | egrep "Location" | cut -f 3 | sort | uniq -c | sort -rn)
        echo "the search result is 
        $search_result"
    else
        echo "Année inexistante"
    fi
else
    echo "Vous n'avez rien entré"
fi
exit