#!/bin/bash

[ $# -ne 0 ] && echo "Uso: ./contfiles.sh" && exit 1

cont=0

for arquivo in *; do
    if [ -f "$arquivo" ]; then
        ((cont++))
    fi
done

echo "Existem $cont arquivos no diretório atual ($(pwd))."

exit 0

