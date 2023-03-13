# Exports

> Anytime you need a variable to persist in your shell (meaning that it will be available when you close and open a new terminal) is an "Exported Variable".

* IMPORTANT: the DOTFILES variable must be set at the top of the `exports/index.sh`. Set this to the location where you cloned the repo, ideally in `~/dotfiles`
* Adding `source ~/dotfiles/exports/index.sh` to your zshrc file will source all of the files in the top-level directory, including hidden files, but does not traverse down into directories.
* Include the `.sh` on the end for the files to get sourced by your shell.
* It is recommended that you create a new file for each tool that needs exported variables. Example: `aws.sh` might include `AWS_PROFILE`
* Add a new file and include an export like `export MY_VARIABLE=my-value` for it to be included in your environment
* Confidential values that you don't want to track in git should be hidden files, like `.my-tokens.sh`
* To see what all of your environment variables are, run `env | sort`


## Other Docs

* [Aliases](../aliases/README.md)
* [Symlinks](../symlinks/README.md)
* [Exports](../exports/README.md)
* [Exports/path](../exports/path/README.md)
* [Functions](../functions/README.md)
