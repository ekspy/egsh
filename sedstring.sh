#!/bin/bash

[ $# -ne 1 ] && echo "Uso: ./sedstring.sh <string>" && exit 1

if [ ${#1} -gt 5 ]; then
    echo "$1" | sed 's/[aeiouAEIOU]/*/g' > saida.txt
else
    echo "$1" > saida.txt
fi
echo "Resultado salvo em saida.txt:"
cat saida.txt

exit 0

