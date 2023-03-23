#!/usr/bin/env zsh
# Granular Tools

alias cdg='cd ~/granular'
alias cdc='cd ~/granular/shared-foundations/core-accessibility'
alias rsuc='cd ~/granular/shared-foundations/core-accessibility/roles-svc-users-consumer'
alias cdcdt='cd ~/granular/cat/brock_dotfiles'

# JIRA
alias sprint='open https://granular.atlassian.net/secure/RapidBoard.jspa\?projectKey\=BCN\&assignee\=557058%3Abc723c28-068c-4558-9d18-ada557631947'

# Removes the pip.conf pointing to Granular's Artifactory for local/personal development off the VPN
alias pip_unset='rm ~/.pip'
alias pip_set='ln -s ~/dotfiles/symlinks/pip ~/.pip'

alias aws_dev='onelogin-aws-login --arn arn:aws:iam::$(op read op://Corteva/aws-work/dev/account_id):role/DeveloperSSO --region us-east-1 --profile granappdevelopment && export AWS_PROFILE=granappdevelopment'
alias aws_test='onelogin-aws-login --arn arn:aws:iam::$(op read op://Corteva/aws-work/test/account_id):role/ReadOnlySSO --region us-east-1 --profile granapptest && export AWS_PROFILE=granapptest'
alias aws_prod='onelogin-aws-login --arn arn:aws:iam::$(op read op://Corteva/aws-work/prod/account_id):role/ReadOnlySSO --region us-east-1 --profile granappproduction && export AWS_PROFILE=granappproduction'