#!/bin/bash

[ $# -ne 0 ] && echo "Uso: ./fat.sh" && exit 1

echo "Digite um número para calcular o fatorial: "

read num

[ $num -le 0 ] && echo "Número deve ser maior que 0" && exit 1

cont=$num
fat=1

while [ $cont -gt 1 ]; do
    fat=$((fat * cont))
    cont=$((cont - 1))
done

echo "O fatorial de $num é: $fat."
exit 0

