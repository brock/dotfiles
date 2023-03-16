#!/usr/bin/env zsh
# Granular Tools

alias cdg='cd ~/granular'
alias cdc='cd ~/granular/cat'
alias cdb='cd ~/granular/bacon'
alias rsuc='cd ~/granular/cat/slack-to-teams/roles-svc-users-consumer'
alias cdcdt='cd ~/granular/cat/brock_dotfiles'

# JIRA
alias sprint='open https://granular.atlassian.net/secure/RapidBoard.jspa\?projectKey\=BCN\&assignee\=557058%3Abc723c28-068c-4558-9d18-ada557631947'

# Removes the pip.conf pointing to Granular's Artifactory for local/personal development off the VPN
alias pip_unset='rm ~/.pip'
alias pip_set='ln -s ~/dotfiles/symlinks/pip ~/.pip'