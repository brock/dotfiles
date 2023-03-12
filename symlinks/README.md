# Symlinks

> Over time, I've tried to automate symlink creation in an install script in the top of my dotfiles repo, but that has proven to be challenging. There are always exceptions. In this directory, I strongly encourage explicitly setting up the symlinks you need in `symlinks/install.sh`. Sure, you could loop through all the files in here and figure out some sort of voodoo, but I'm not a wizard, and (likely), neither are you.

* The `dotfiles/symlinks/install.sh` is called by the `dotfiles/install` script. You can always run it manually though.
* The `dotfiles/symlinks/install.sh` is where you manually setup the symlinks you want and need.
* Each of the files and directories in `symlinks` should get symlinked where you need it to go. There is no automated script that loops through each file in this directory. Instead you should add each one manually to make sure it is done correctly.

The `install.sh` script uses this format to check if a symlink exists; when re-run, it doesn't try to re-create symlinks again.

```zsh
# Use -L to check if there is a symlink there
if [[ ! -L ~/.gitconfig ]]; then
    ln -s ~/dotfiles/symlinks/gitconfig ~/.gitconfig
fi
```
* The install script should check to see if there is a symlink already there before creating a new symlink, so do not use `ln -f` to try to force recreation of one.
* I structure the `symlinks` directory pretty similar to the HOME directory, so most of the directories in `symlinks` are getting symlinked into `~` (HOME).

## Using this with secret keys and passwords

If you insist on placing a file here for it to by symlinked into your home directory and it has secrets and tokens, add a dot to the front of it so that it is gitignored. Otherwise, consider making a template in `dotfiles/templates` to stub out the template of the file that you need, and you can copy in your secrets outside of source control.