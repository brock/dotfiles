#!/usr/bin/env zsh
# Load functions into shell

DOTFILES=${DOTFILES:=~/dotfiles}

for file in $DOTFILES/functions/*; do
    if [[ ! -d $file ]] && [[ `basename $file` != "install.sh" ]]; then
        source $file
    fi
done

debug "Functions loaded"