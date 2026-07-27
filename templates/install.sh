#!/usr/bin/env zsh
# Populate templates into config files
# Uses 1Password CLI to inject passwords

DOTFILES=${DOTFILES:=~/dotfiles}
source ${DOTFILES}/functions/debug.sh


##### SSH Config
debug "Verifying ~/.ssh/config exists"
if [[ ! -r ~/.ssh/config ]]; then
	test -d ~/.ssh || (echo "No ~/.ssh directory exists. Not setting up the template until you setup SSH keys" && exit 1)
	echo "Creating ~/.ssh/config from dotfiles/templates/ssh_config.tpl 1Password template"
    op inject -i $DOTFILES/templates/ssh_config.tpl -o ~/.ssh/config
fi

echo "Templates completed"