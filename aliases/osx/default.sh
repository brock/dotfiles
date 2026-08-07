#!/usr/bin/env zsh

alias cdd='cd ~/Desktop'
alias drop='cd ~/Dropbox'
alias resetusb='sudo launchctl stop com.apple.usbd; sudo launchctl start com.apple.usbd'
alias flush='sudo dscacheutil -flushcache'
alias noapple="find . | xargs xattr -d com.apple.quarantine"
alias iphone="open -a Simulator.app"
alias x='stree'

# Custom shortcuts
alias paste='pbpaste'

# Overrides to default commands
alias md5sum='md5 -r'

# Copy Last command
alias cl="history | tail -1 | cut -d' ' -f 5- | pbcopy && echo Copied last command to the clipboard."

# use this to alert you when a process completes. IE: bash some_long_script.sh && notify
alias notify="echo -ne '\007'"

# Application-specific
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias dot='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl ~/dotfiles'

