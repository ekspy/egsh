#!/bin/bash
[ $# -ne 1 ] && echo "Uso: $0 arquivo" && exit 1
while IFS= read -r linha; do
    echo "Linha: $linha"
done < "$1"
contador=1
while [ $contador -le 3 ]; do
    echo "Iteração: $contador"
    ((contador++))
done
exit 0
