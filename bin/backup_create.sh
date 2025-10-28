#!/bin/bash

SOURCE_FOLDER="$HOME/Main"
DEST_DIR="/run/media/veracrypt1/backup"
SNAPSHOT_FILE="$DEST_DIR/backup.snar"
BACKUP_NAME="Main_$(date +%Y-%m-%d).tar"

echo "Backup process started..."

tar --create \
	--verbose \
	--file="$DEST_DIR/$BACKUP_NAME" \
	--listed-incremental="$SNAPSHOT_FILE" \
	-C $DEST_DIR "$SOURCE_FOLDER"

echo "Backup created: $BACKUP_NAME"
