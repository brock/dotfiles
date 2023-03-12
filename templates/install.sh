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


echo "Templates completed"