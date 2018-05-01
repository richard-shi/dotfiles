#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GLOBIGNORE=".:.."

shopt -s dotglob
for f in $DIR/[.]*; do

    if [[ "$f" == */.git ]]; then
        echo "Ignoring .git folder..."
        continue;
    fi

    echo "Creating symbolic link $HOME/${f##*/}"
    # echo "ln -sf $f $HOME/${f##*/}"
    ln -sf "$f" "$HOME/${f##*/}"
done

