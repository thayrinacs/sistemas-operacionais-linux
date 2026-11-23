#!/bin/bash
# Atividade 7.6: busca um contato no arquivo agenda usando grep

if [ $# -ne 1 ]
then
    echo "Uso: $0 <nome>"
    exit 1
fi

if grep -i "$1" agenda
then
    echo "Contato encontrado com sucesso."
else
    echo "Nenhum contato encontrado para '$1'."
fi