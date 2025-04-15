#!/bin/bash
for arquivo in *.txt; do
    [ -f "$arquivo" ] && echo "Arquivo: $arquivo"
done
for i in $(seq 1 3); do
    echo "Número: $i"
done
for ((j=1; j<=3; j++)); do
    echo "Contador: $j"
done
exit 0
