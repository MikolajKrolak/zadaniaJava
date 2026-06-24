#!/bin/bash

KATALOG="./Documents"

if [ -d "$KATALOG" ]; then
        find "$KATALOG" -type f -name "*.txt"

else
        echo "Blad: Katalog $KATALOG nie istnieje."
fi
