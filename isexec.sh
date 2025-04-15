#!/bin/bash

[ $# -ne 1 ] && echo "Uso: ./isexec.sh <arquivo>" && exit 1

if [ -x "$1" ]; then
    echo "$1 é executável"
else
    echo "$1 não é executável"
fi

exit 0

