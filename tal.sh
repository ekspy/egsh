#!/bin/bash

[ $# -ne 1 ] && echo "Uso: ./tal.sh <arquivo>" && exit 1

curtas=0
medias=0
longas=0

while IFS= read -r linha; do
    tam=${#linha}

    case $tam in
        [0-9])
            echo "Curta: $linha"
            ((curtas++))
            ;;
        1[0-9])
            echo "Media: $linha"
            ((medias++))
            ;;
        *)
            nova_linha=$(echo "$linha" | sed 's/[aeiou]/*/g')
            echo "Longa modificada: $nova_linha"
            ((longas++))
            ;;
    esac
done < $1

echo "Curtas: $curtas; Médias: $medias; Longas: $longas"

exit 0

