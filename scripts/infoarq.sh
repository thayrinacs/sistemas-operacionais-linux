#!/bin/bash
# Atividade 7.9 (2): mostra caracteres, palavras e linhas de um arquivo legível

if [ $# -ne 1 ]
then
    echo "Script que exibe informações de um arquivo texto"
    echo "Uso: $0 arquivo"
    exit 1
fi

if [ ! -e "$1" ]
then
    echo "Arquivo $1 inexistente"
elif [ -r "$1" ]
then
    echo "Informações do arquivo $1:"
    echo "Caracteres: `wc -m < "$1"`"
    echo "Palavras:   `wc -w < "$1"`"
    echo "Linhas:     `wc -l < "$1"`"
else
    echo "Você não tem permissão de leitura no arquivo $1"
fi
