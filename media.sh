#!/bin/bash

[ $# -ne 2 ] && echo "Uso: ./media.sh numero1 numero2" && exit 1

echo "A média é $(echo "scale=2; ($1 + $2) / 2" | bc)"
exit 0
