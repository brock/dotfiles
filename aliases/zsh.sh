#!/usr/bin/env zsh

###
# ZSH Aliases
###

alias reload='source ~/.zshrc'

# In-line Aliases, aka: Global Aliases #
# -g makes it globally available on the command line, anywhere in the line
# Examples:
#     ps aux G http
#     cat /etc/php.ini M
alias -g M='| more '
alias -g G='| grep '
alias -g L='| less '
alias -g C='| pbcopy'
alias -g D='~/Desktop'

