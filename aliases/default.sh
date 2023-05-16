#!/usr/bin/env zsh

# Default Aliases

# edit dotfiles aliases and functions
alias ea='vi ~/dotfiles/aliases'
alias ff='edit'
alias dot='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/dotfiles'
alias cddot="cd ~/dotfiles"

# Exit the terminal
alias e='exit'

# Frequently-used directories
alias cdd='cd ~/Desktop'
alias cdr='(test -d ~/research || mkdir ~/research) && cd ~/research'


# Easy navigation
alias ....='cd ../../..'
alias .....='cd ../../../..'

# advanced LS commands
alias la='ls -alhF'
alias lal='la ./*'
# thanks to 'sth' for this next one: http://goo.gl/b3jx3
alias lsn="ls -la | awk '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"
alias laa='ls -ah'
alias lst='ls -tc'
alias lstc='lst'
alias latest='lst'

# some spell-check commands
alias whcih='which'
alias whicg='which'

# SSH #
alias sshc='vi ~/.ssh/config'

# Terraform
alias tf='terraform'
