#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GLOBIGNORE=".:.."

shopt -s dotglob
for f in $DIR/[.]*; do

    # echo "Removing extra file: ../${f##*/}"
    # rm "../${f##*/}"

    echo "Creating symbolic link ../${f##*/}"
    ln -sf "$f" "../${f##*/}"
done

