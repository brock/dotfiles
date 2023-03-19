#!/usr/bin/env zsh

# https://blog.askesis.pl/post/2017/04/how-to-debug-zsh-startup-time.html
# Also, see the `zprof` command at the bottom of this file
# zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PROFILE=$HOME/.zshrc

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="smt-mod"

# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"

CASE_SENSITIVE="false"
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#  zsh-autosuggestions docker docker-compose zsh-completions
plugins=(zsh-syntax-highlighting docker docker-compose) # zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# source the alias launcher
[[ -r ~/dotfiles/aliases/index.sh ]] && source ~/dotfiles/aliases/index.sh

# source the compiled PATH environmental variable
[[ -r ~/dotfiles/exports/path/PATH.sh ]] && source ~/dotfiles/exports/path/PATH.sh

# source all files in the exports directory
[[ -r ~/dotfiles/exports/index.sh ]] && source ~/dotfiles/exports/index.sh

# source all functions in the exports directory
[[ -r ~/dotfiles/functions/install.sh ]] && source ~/dotfiles/functions/install.sh


setopt hist_expire_dups_first
setopt hist_find_no_dups

# autoload -U +X bashcompinit && bashcompinit
# complete -o nospace -C /Users/brock/dotfiles/symlinks/bin/granular/terraform terraform

# enable command completion / initially added after adding jira-cli with brew
# autoload -U compinit; compinit

# adding to support the python argcomplete used with ansible
# https://kislyuk.github.io/argcomplete/#zsh-support
# autoload -U bashcompinit
# bashcompinit
