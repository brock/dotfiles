# Dotfiles

Review the [install](./install) script. Running `zsh install` will get things rolling.

> NOTE: This repo uses the [1Password CLI](https://developer.1password.com/docs/cli/get-started) to inject secret keys into files from templates.


## Files in root
* `install` - sets up PATH, exports, symlinks, functions, and symlinks `bin` to your home directory. This can and should be run regularly.
* `new_machine` - this is only needed when you have a new machine and want to setup the basics.

> NOTE: "hidden files" (files that have a dot in front of their name like `.personal-token`) are git-ignored by default.

## Directories in root

### aliases
The aliases directory contains the [aliases/index.sh](./aliases/index.sh) that sources all other alias files, and is called by the `.zshrc` file located in [symlinks/zsh/zshrc.sh](./symlinks/zsh/zshrc.sh). 

### exports
* All files in the root of [exports](./exports) get sourced by `~/.zshrc` except for the `exports/path/` directory.
* All environment variables are managed in [exports](./exports), and hidden files are gitignored in case you want to keep secrets in environment variables.

#### exports/path
* The [exports/path](./exports/path) directory is used to create the PATH variable when you run `zsh install`. The output is saved in the `~/dotfiles/exports/path/PATH.sh` and is sourced by all shells. `PATH.sh` is gitignored.
* You can sort PATH directories by numbering the files in [exports/path](./exports/path) like [01_default.sh](./exports/path/01_default.sh), [02_homebrew.sh](./exports/path/02_homebrew.sh), etc.
* The contents of these files may include multiple directories on new lines:
```sh
# exports/path/01_default.sh
/bin
/sbin
/usr/local/bin
/usr/bin
/usr/sbin
```
* The [exports/path/install.sh](./exports/path/install.sh) script is only executed when you run the [~/dotfiles/install](./install) script.  
* The `~/.zshrc` in [~/dotfiles/symlinks/zsh/zshrc.sh](./symlinks/zsh/zshrc.sh) sources the `~/dotfiles/exports/path/PATH.sh` by calling `source ~/dotfiles/exports/path/PATH.sh`.  
Use `pathadd`to quickly add a new directory to your PATH from the command-line. When you run `pathadd /some/directory` it gets added to the PATH, then gets added to a file called [exports/path/99_tmp.sh](exports/path/99_tmp.sh) for you to sort or commit.

### functions

Functions are loaded into your shell when the `.zshrc` file located in [symlinks/zsh/zshrc.sh](./symlinks/zsh/zshrc.sh) calls `source ~/dotfiles/functions/index.sh`. Any function created here is available anywhere.

### symlinks

Symlinks are setup in [symlinks/install.sh](./symlinks/install.sh) which is only executed when you run the [~/dotfiles/install](./install) script.  

#### symlinks/bin
The entire [symlinks/bin](./symlinks/bin) directory gets symlinked to the user's `$HOME/bin` directory, and each sub-directory is then added to the `~/dotfiles/exports/path/PATH.sh` when you run the [~/dotfiles/install](./install) script.  


## Known Issues

* `op` requires `op signin`
* `stree` requires `chown-ing` `/usr/local/bin` to the current user before it will install the command line tools. They have no user-elevation privilege functionality (apparently?)
	* `sudo chown $(whoami): /usr/local/bin` then SourceTree --> Preferences --> Install Command-Line Tools --> then `sudo chown root: /usr/local/bin` to set it back. Not sure if this is the best approach, but it seems to work for now.