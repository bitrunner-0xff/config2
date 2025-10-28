#!/bin/bash

BACKUP_DIR="/run/media/veracrypt1/backup"
RESTORE_DIR="$HOME"

for BACKUP in $(ls "$BACKUP_DIR"/Main_*.tar | sort); do
    echo "Restoring from: $BACKUP"

    tar --extract \
		--verbose \
        --listed-incremental=/dev/null \
        --directory="$RESTORE_DIR" \
        --file="$BACKUP"
done

echo "Restore completed in: $RESTORE_DIR"
