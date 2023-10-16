#!/usr/bin/bash

echo "Entrez l'année (2016, 2017, 2018) :"
read year
cd /Users/zhongjie/Documents/PPE1-2023/Fichiers/ANN/$year
cat $year*.ann | egrep "$1" | wc -l

cd /Users/zhongjie/Documents/PPE1-2023/Fichiers/ANN/2016
cat 2016*.ann | egrep "$1" | wc -l

cd /Users/zhongjie/Documents/PPE1-2023/Fichiers/ANN/2017
cat 2017*.ann | egrep "$1" | wc -l

cd /Users/zhongjie/Documents/PPE1-2023/Fichiers/ANN/2018
cat 2018*.ann | egrep "$1" | wc -l