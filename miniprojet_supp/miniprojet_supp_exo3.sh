#!/usr/bin/env bash

echo "Plz give me your source file"
read input
# avoir le fichier source à traiter

echo "Plz give me your new file"
read new_file
# avoir le nouveau fichier à exporter le résultat dedans


odd_file=$(mktemp)
even_file=$(mktemp)
new_odd_file=$(mktemp)
new_even_file=$(mktemp)
# création des fichiers temporaires

awk 'NR % 2 != 0' "$input" > "$odd_file"
# repérer et exporter les lignes impaires
awk 'NR % 2 == 0' "$input" > "$even_file"
# pour les lignes paires


paste -d' ' "$odd_file" "$even_file" > "$new_odd_file"
# fusionner respectivement les lignes impaires et paires
paste -d' ' "$even_file" "$odd_file" > "$new_even_file"
# fusionner respectivement les lignes paires et impaires


paste -d'\n' "$new_odd_file" "$new_even_file" > "$new_file"
# fusionner (lignes en mode impaires-paires) et (lignes en mode paires-impaires) avec un retour à la ligne à chaque fois


rm "$odd_file" "$even_file" "$new_odd_file" "$new_even_file"
# supprimer les fichiers temporaires