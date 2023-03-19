# Template Exports

The files in here are used to generate a template using the 1Password CLI `op`. By placing them here, they are only run once and don't need to be regenerated everytime you open your shell. Files should only go in here if they contain secrets that are stored in 1Password.

1. Create a template file here like `secrets.sh.tpl`
1. Add the `op://...` reference to the file to load the secrets. (if you need to find the reference, call `op item get the_item_name --format json`)
1. In `templates/install.sh`, where you will create a hidden file in `exports/` like `exports/.secrets.sh`. 
1. Make sure you add a check to see if the file exists, and only create it if it doesn't exist.

With this in place, you can add your 1Password reference, and the template will create the output of the secrets into the `exports/` folder one time, and it will be gitignored moving forward.


## Examples

```sh
# secrets.sh.tpl
export USERNAME=op://WorkVault/work_account/username
export TOKEN=op://WorkVault/work_account/credential
```

```sh
# templates/install.sh

##### Exports (environment variables) with secrets
debug "Verifying ~/dotfiles/exports/.secrets.sh exists"
if [[ ! -r $DOTFILES/exports/.secrets.sh ]]; then
	echo "Creating ~/dotfiles/exports/.secrets.sh from dotfiles/templates/exports/secrets.sh.tpl 1Password template"
    op inject -i $DOTFILES/templates/exports/secrets.sh.tpl -o $DOTFILES/exports/.secrets.sh
fi
```