#!/usr/bin/env zsh
# help - provides help in a directory
# Usage: add $show_help to a zsh theme to show an emoji if a .help file exists in the current directory
#        typically used for common commands used in a repo

function help_exists() {
  test -f .help
}

function show_help() {
  help_exists && echo "🙋 "
}

function help() {
  help_exists && cat .help || echo "No .help file found"
}