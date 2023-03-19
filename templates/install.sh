#!/usr/bin/env zsh
# Populate templates into config files
# Uses 1Password CLI to inject passwords

DOTFILES=${DOTFILES:=~/dotfiles}
source ${DOTFILES}/functions/debug.sh


##### Alfred - Google Authenticator
debug "Verifying ~/.gauth exists"
if [[ ! -r ~/.gauth ]]; then
	echo "Creating ~/.gauth from dotfiles/templates/gauth.tpl 1Password template"
    op inject -i $DOTFILES/templates/gauth.tpl -o ~/.gauth
fi

##### terraform
debug "Verifying ~/.terraformrc exists"
if [[ ! -r ~/.terraformrc ]]; then
	echo "Creating ~/.terraformrc from dotfiles/templates/terraformrc.tpl 1Password template"
    op inject -i $DOTFILES/templates/terraformrc.tpl -o ~/.terraformrc
fi


##### Corteva OneLogin config
debug "Verifying ~/.onelogin-aws.config exists"
if [[ ! -r ~/.onelogin-aws.config ]]; then
	echo "Creating ~/.onelogin-aws.config from dotfiles/templates/onelogin-aws.config.tpl 1Password template"
    op inject -i $DOTFILES/templates/onelogin-aws.config.tpl -o ~/.onelogin-aws.config
fi

##### SSH Config
debug "Verifying ~/.ssh/config exists"
if [[ ! -r ~/.ssh/config ]]; then
	test -d ~/.ssh || (echo "No ~/.ssh directory exists. Not setting up the template until you setup SSH keys" && exit 1)
	echo "Creating ~/.ssh/config from dotfiles/templates/ssh_config.tpl 1Password template"
    op inject -i $DOTFILES/templates/ssh_config.tpl -o ~/.ssh/config
fi

##### Exports (environment variables) with secrets
debug "Verifying ~/dotfiles/exports/.gitlab.sh exists"
if [[ ! -r $DOTFILES/exports/.gitlab.sh ]]; then
	echo "Creating ~/dotfiles/exports/.gitlab.sh from dotfiles/templates/exports/gitlab.sh.tpl 1Password template"
    op inject -i $DOTFILES/templates/exports/gitlab.sh.tpl -o $DOTFILES/exports/.gitlab.sh
fi


echo "Templates completed"