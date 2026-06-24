#!/bin/bash

KATALOG="./Documents"
BACKUP_DIR="/.backups"
DATA=$(date +%F)
NAZWA_ARCHIWUM="${BACKUP_DIR}/${USER}_backup_${DATA}.tar.gz"


mkdir -p "$BACKUP_DIR"

if [ -d "$KATALOG" ]; then
        find "$KATALOG" -type f -name "*.txt"

        find "$KATALOG" -type f -name "*.txt" -print0 | tar -czf "$NAZWA_ARCHIWUM" --null -T -

        echo "Kopia zapasowa zostala zapisana w: $NAZWA_ARCHIWUM"

else
        echo "Blad: Katalog $KATALOG nie istnieje."
fi
