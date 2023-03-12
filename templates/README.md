# Templates

The templates use the [1Password CLI](https://developer.1password.com/docs/cli/get-started) to inject secret keys into files from templates.

## How to Use 1Password CLI
To use this, you'll need to identify the reference to the item in 1Password that you want to retrieve. For example, if in 1Password your item was called "OneLogin", you'd run:

```sh
op item get OneLogin --format json
```

This would output each item in JSON format. Select the reference from the following:

```json
{
      "id": "credential",
      "type": "CONCEALED",
      "label": "credential",
      "value": "CONCEALED",
      "reference": "op://Corteva/OneLogin/credential"
}
```

Then running `op read op://Corteva/OneLogin/credential` provides the credential on the command line.

## Use in templates

Inside your template, you'll include the reference and commit this to source control:

```sh
secret_key=op://Corteva/OneLogin/credential
```

Then you can update [templates/install.sh](./install.sh) with the command to *inject* the secret from your template into the desired file: `op inject -i $DOTFILES/templates/onelogin-aws.config.tpl -o ~/.onelogin-aws.config`. This will copy the template with the secrets inserted into the new file.

It is good practice to simply check for the existance of the output file, because once it is written, the secrets are present in the plain-text file and do not need to be recreated.

```sh
# if ~/.onelogin-aws.config does not exist, create it from the template
if [[ ! -r ~/.onelogin-aws.config ]]; then
	op inject -i $DOTFILES/templates/onelogin-aws.config.tpl -o ~/.onelogin-aws.config
fi
```