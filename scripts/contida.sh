#!/bin/bash
# Atividade 7.9 (1): verifica se a primeira palavra está contida na segunda

if [ $# -ne 2 ]
then
    echo "Script que verifica se uma palavra está contida em outra"
    echo "Uso: $0 palavra1 palavra2"
    exit 1
fi

if [[ "$2" =~ "$1" ]]
then
    echo "A palavra '$1' está contida em '$2'"
else
    echo "A palavra '$1' NÃO está contida em '$2'"
fi
