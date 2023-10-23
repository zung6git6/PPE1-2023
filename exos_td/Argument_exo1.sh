#!/bin/bash

echo "Entrez l'année (2016, 2017, 2018) :"
read year

if [ "$year" = "2016" ]
then
    cd ../Fichiers/ANN/2016
    cat 2016*.ann | egrep "$1" | wc -l
elif [ "$year" = "2017" ]
then
    cd ../Fichiers/ANN/2017
    cat 2017*.ann | egrep "$1" | wc -l
elif [ "$year" = "2018" ]
then
    cd ../Fichiers/ANN/2018
    cat 2018*.ann | egrep "$1" | wc -l
else
    echo "Année inexistante"
fi

exit