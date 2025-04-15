#!/bin/bash

[ $# -ne 0 ] && echo "Uso: ./relatar.sh" && exit 1

arquivos=0
diretorios=0
outros=0

> relatorio.txt

for item in *; do
    if [ -f "$item" ]; then
        echo "$item é um arquivo" >> relatorio.txt
        ((arquivos++))
    elif [ -d "$item" ]; then
        echo "$item é um diretório" >> relatorio.txt
        ((diretorios++))
    else
        echo "$item é outro tipo" >> relatorio.txt
        ((outros++))
    fi
done

echo "Total de arquivos regulares: $arquivos" >> relatorio.txt
echo "Total de diretórios: $diretorios" >> relatorio.txt
echo "Total de outros: $outros" >> relatorio.txt
echo ""
echo "Arquivos com extensão .txt:" >> relatorio.txt
ls *.txt 2>/dev/null | grep -E '\.txt$' >> relatorio.txt || echo "Nenhum arquivo .txt encontrado" >> relatorio.txt
echo ""
echo "Relatório gerado em relatorio.txt:"
cat relatorio.txt

exit 0

