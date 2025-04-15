#!/bin/bash

[ $# -ne 0 ] && echo "Uso: ./fibo.sh" && exit 1

echo "Digite um número n para gerar n números de fibonacci: "

read n

[ $n -le 0 ] && echo "Número deve ser maior que 0" && exit 1

a=0
b=1

echo "" > fibonacci.txt

for ((i=0; i<n; i++)); do
    echo $a >> fibonacci.txt
    aux=$((a + b))
    a=$b
    b=$aux
done

echo "A soma dos números gerados é: $(awk '{sum += $1} END {print sum}' fibonacci.txt)"
echo ""
cat fibonacci.txt

exit 0

