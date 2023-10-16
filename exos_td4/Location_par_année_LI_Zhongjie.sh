#!/bin/bash

echo "Entrez une année parmi 2016, 2017 et 2018 : "
read year
echo "vous avez entré : $year"
cat ~/Documents/PPE1-2023/Fichiers/ANN/$year/$year*.ann | egrep "Location" | cut -f 3 | sort | uniq -c | sort -rn