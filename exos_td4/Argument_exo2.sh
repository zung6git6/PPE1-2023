#!/usr/bin/bash

cd /Users/zhongjie/Documents/PPE1-2023/Fichiers/ANN/*
cat *.ann | egrep "Location" | cut -f 3 | sort | uniq -c | sort -nr | head 10