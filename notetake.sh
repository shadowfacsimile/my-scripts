#!/bin/bash

noteFileName="$HOME/notes/my-notes/note-$(date +%Y-%m-%d).md"

if [ ! -f $noteFileName ]; then
    echo "# Notes for $(date +%Y-%m-%d)" > $noteFileName
fi

nvim -c "norm Go" \
    -c "norm Go## $(date +%H:%M)" \
    -c "norm G2o" \
    -c "norm zz" \
    -c "startinsert" $noteFileName

