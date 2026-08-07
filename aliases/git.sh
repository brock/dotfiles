#!/usr/bin/env zsh

# Git Aliases
alias gb='git branch'
alias gco='git checkout'
alias m='(git checkout main || git checkout master) && pull'
alias grh='git reset --hard'
alias gll='git log --graph --pretty=format":%C(yellow)%h%C(green)%d%Creset %s %C(white) %an, %ar%Creset"'
alias gfo='git fetch origin'
alias grso='git remote show origin'
alias gag='git add .gitignore'
# git remove untracked files / see cut command usage http://stackoverflow.com/a/9004039/2083544
alias gru='git status -s | grep "^??" | cut -d\  -f2- | xargs -I \{\} rm -rf "{}"'
