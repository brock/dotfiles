#!/usr/bin/env zsh

# source other files in this directory
for file in ~/dotfiles/aliases/osx/*.sh; do
  if [[ ! -d $file ]] && [[ `basename $file` != 'default.sh' ]]; then
    source $file
  fi 
done

alias flush='sudo dscacheutil -flushcache'
alias noapple="find . | xargs xattr -d com.apple.quarantine"
alias iphone="open -a Simulator.app"
alias k='killall'

# Overrides to default commands
alias md5sum='md5 -r'

# Custom shortcuts
alias del='trash'
alias paste='pbpaste'

# Application-specific
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias ws='wstorm'
alias drop='cd ~/Dropbox'

# Copy Last command
alias cl="history | tail -1 | cut -d' ' -f 5- | pbcopy && echo Copied last command to the clipboard."

# use this to alert you when a process completes. IE: bash some_long_script.sh && notify
alias notify="echo -ne '\007'"

alias resetusb='sudo launchctl stop com.apple.usbd; sudo launchctl start com.apple.usbd'

alias dockall='defaults write com.apple.Dock appswitcher-all-displays -bool true; killall Dock'