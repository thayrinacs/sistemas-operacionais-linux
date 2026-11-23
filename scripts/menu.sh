#!/bin/bash
# Atividade 7.11: menu de opções com case

echo "========== MENU =========="
echo "1 - Exibir uso das partições (df -h)"
echo "2 - Exibir usuários logados (w)"
echo "3 - Exibir data/hora (date)"
echo "4 - Sair"
echo "=========================="
echo -n "Digite a opção desejada: "
read opcao

case $opcao in
    1) df -h ;;
    2) w ;;
    3) date ;;
    4) echo "Saindo..."; exit 0 ;;
    *) echo "Opção inválida! Digite um número de 1 a 4." ;;
esac
