#!/bin/zsh
# Environment variables

DOTFILES=${DOTFILES:=~/dotfiles}

# source the dotfiles/exports
# Adding `(DN)` is a zsh option that includes dotfiles
# https://unix.stackexchange.com/a/504718/107211
for file in ${DOTFILES}/exports/*(DN); do
    if [[ ! -d $file ]] && [[ `basename $file` != "index.sh" ]] && [[ `basename $file` != "README.md" ]]; then
        source "$file"
    fi
done
