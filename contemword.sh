#!/bin/bash

[ $# -ne 0 ] && echo "Uso: ./contemword.sh" && exit 1

cont=0

> resultado.txt

while IFS= read -r linha; do
    if echo "$linha" | grep bash; then
        ((cont++))
        echo "$linha" >> resultado.txt
    fi
done < entrada.txt

echo "Contador: $cont"
cat resultado.txt

exit 0

