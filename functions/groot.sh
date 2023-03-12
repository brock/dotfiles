#!/usr/bin/env zsh
# groot - go to the "git root" or "groot"
# Usage: when down in a repo several levels, running "groot" takes you to the top

function groot() {
    GROOTDIR=$PWD
    FOUND=$(find $GROOTDIR -type d -name ".git")
    while [ -z "$FOUND" ]
    do
        GROOTDIR=$(dirname $GROOTDIR)
        FOUND=$(find $GROOTDIR -type d -name ".git")
    done
    cd $GROOTDIR
    unset GROOTDIR
}
