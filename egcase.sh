#!/bin/bash
[ $# -ne 1 ] && echo "Uso: $0 palavra" && exit 1
case "$1" in
    [a-z]*) echo "Minúscula";;
    [A-Z]*) echo "Maiúscula";;
    [0-9]*) echo "Número";;
    *) echo "Outro";;
esac
case ${#1} in
    [0-5]) echo "Curta";;
    [6-9]|1[0-9]) echo "Média";;
    *) echo "Longa";;
esac
exit 0
