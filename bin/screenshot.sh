#!/bin/sh

EXTERNAL="/run/media/veracrypt1"
LOCAL="$HOME/Screenshots"

if [ -d "$EXTERNAL" ] && [ -w "$EXTERNAL" ]; then
    DEST="${EXTERNAL}/Screenshots"
else
    DEST="$LOCAL"
fi

mkdir -p "$DEST"

FILE="$DEST/$(date +%F_%T).png"

if [ "$1" = "--region" ]; then
    grim -g "$(slurp)" "$FILE"
else
    grim "$FILE"
fi

wl-copy < "$FILE"
