#!/usr/bin/env zsh

# Git Aliases
alias gb='git branch'
alias gco='git checkout'
alias m='(git checkout master || git checkout main) && pull'
alias grh='git reset --hard'
alias x='stree'
alias gll='git log --graph --pretty=format":%C(yellow)%h%C(green)%d%Creset %s %C(white) %an, %ar%Creset"'
alias gfo='git fetch origin'
alias grso='git remote show origin'
alias gag='git add .gitignore'
