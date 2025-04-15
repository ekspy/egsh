#!/bin/bash

[ $# -ne 1 ] && echo "Uso: ./pares <arquivo>" && exit 1

pares=$(grep -E "^[0-9]*[02468]$" $1)
quantidade=$(echo "$pares" | wc -l )

echo "Quantidade de números pares: $quantidade"
echo "Números pares encontrados:"
echo "$pares"
