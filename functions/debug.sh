#!/usr/bin/env zsh
# debug
# Usage: DEBUG=true ./run_script

function debug() {
    if [[ -n $DEBUG ]]; then
        echo "DEBUG: ${1}"
    fi
}
