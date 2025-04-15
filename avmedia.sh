#!/bin/bash

[ $# -ne 1 ] && echo "Uso: ./avmedia.sh <arquivo>" && exit 1
[ ! -s $1 ] && echo "Arquivo não pode ser nulo" && exit 1

soma=$(awk '{sum += $1} END {print sum}' $1)
cont=$(wc -l < valores.txt)
echo "Soma: $soma"
echo "Cont: $cont"
echo "Média: $(echo "scale=2; $soma / $cont" | bc)"

exit 0

