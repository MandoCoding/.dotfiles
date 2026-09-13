#!/usr/bin/env bash

backup="$HOME/.config.pre-stow.$(date +%Y%m%d-%H%M%S)"
mkdir -p "$backup"

for src in "$HOME/.dotfiles/config"/*; do
    [ -e "$src" ] || continue

    app="$(basename "$src")"
    target="$HOME/.config/$app"

    if [ -e "$target" ] || [ -L "$target" ]; then
        echo "Backing up $target"
        mv "$target" "$backup/"
    fi
done

echo "Backup: $backup"
