#!/usr/bin/env zsh
# setup PATH using each line from each file in dotfiles/path - http://goo.gl/vAr6o0

DOTFILES=${DOTFILES:=~/dotfiles}
source ${DOTFILES}/functions/debug.sh

for file in $DOTFILES/exports/path/*.sh; do
    if [[ ! -d $file ]] && [[ `basename $file` != "install.sh" ]] && [[ `basename $file` != "PATH.sh" ]]; then
        debug "Reading $file to add lines to the PATH..."
        while read line || [[ -n $line ]]; do
            eval line=$line
            export MANUAL_PATHADD=false
            $DOTFILES/symlinks/bin/utils/pathadd $line
        done <$file
    fi
done

echo "PATH up to date"