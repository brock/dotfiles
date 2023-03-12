#!/usr/bin/env zsh
# alias launcher

DOTFILES=${DOTFILES:=~/dotfiles}

source ${DOTFILES}/aliases/zsh.sh

# get other alias files
source ${DOTFILES}/aliases/default.sh
source ${DOTFILES}/aliases/docker.sh
source ${DOTFILES}/aliases/git.sh
source ${DOTFILES}/aliases/node.sh
source ${DOTFILES}/aliases/granular.sh
source ${DOTFILES}/aliases/utils.sh

if [[ $OSTYPE =~ darwin ]]; then
  source ${DOTFILES}/aliases/osx/default.sh
fi

# aliases created from the command line using `adda`
# will be saved here for you to organize
source ${DOTFILES}/aliases/tmp.sh
