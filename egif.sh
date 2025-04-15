#!/bin/bash
[ $# -ne 1 ] && echo "Uso: $0 arquivo" && exit 1
if [ -f "$1" ]; then
    echo "Arquivo regular"
elif [ -d "$1" ]; then
    echo "Diretório"
else
    echo "Outro tipo"
fi
[ -r "$1" ] && echo "Legível"
[ -w "$1" ] && echo "Gravável"
[ -x "$1" ] && echo "Executável"
exit 0
