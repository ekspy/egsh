#!/bin/bash

[ $# -ne 3 ] && echo "Uso: ./calc.sh numero1 numero2 operador" && exit 1

# Operador * deve ser envolto em "" na linha de comando

cont=0

case "$3" in
    "+") result=$(expr $1 + $2); echo "Resultado: $result";;
    "-") result=$(expr $1 - $2); echo "Resultado: $result";;
    "*") result=$(expr $1 \* $2); echo "Resultado: $result";;
    "/") [ $2 -eq 0 ] && echo "Sem divisão por 0" && exit 1
        result=$(expr $1 / $2); echo "Resultado: $result";;
    *) echo "Operador Inválido" && exit 1;;
esac


exit 0

