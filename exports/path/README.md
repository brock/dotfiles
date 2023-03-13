# exports/path

> The `exports/path` is where you can keep track of how your `$PATH` variable is built up by your shell. The `$PATH` variable is what determines if you can run a command from the command line. For example, if you want to run the command `foo` from anywhere in your terminal, we need to know what directory `foo` is in. This is where `$PATH` comes in; you add the directory that `foo` lives in to your `$PATH` variable, and it automatically can be run from anywhere.

The script in `exports/path/install.sh` does what you might guess: it parses all of the `.sh` files in `exports/path`, line by line, and adds them to the `$PATH` variable. It also dumps them into a git-ignored file called `exports/path/PATH.sh` so you can inspect it after the installer runs.

The contents of `exports/path/install.sh` isn't complicated. It simply loops through each `.sh` file in the directory, parses each line in each file, and adds it to the `$PATH`. It also skips the following files when looping:
* Any sub-directory of `exports/path` is ignored
* The `index.sh` is skipped since that is what is calling the loop
* The `PATH.sh` is skipped since that is output by `index.sh`
* The `README.md` is skipped since it doesn't end in `.sh`

```sh
#!/usr/bin/env zsh
# setup PATH using each line from each file in dotfiles/path - http://goo.gl/vAr6o0

DOTFILES=${DOTFILES:=~/dotfiles}
source ${DOTFILES}/functions/debug.sh

for file in $DOTFILES/exports/path/*.sh; do
    if [[ ! -d $file ]] && [[ `basename $file` != "install.sh" ]] && [[ `basename $file` != "PATH.sh" ]]; then
        debug "Reading $file to add lines to the PATH..."
        while read line || [[ -n $line ]]; do
            eval line=$line
            export MANUAL_PATHADD=false
            $DOTFILES/symlinks/bin/utils/pathadd $line
        done <$file
    fi
done

echo "PATH up to date"
```
