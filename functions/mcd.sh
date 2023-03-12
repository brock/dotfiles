#!/usr/bin/env zsh
# mcd - create a directory and "cd" into it
# Usage: mcd new_directory

function mcd() {
    mkdir $1
    cd $1
}
