# Aliases

* The [~/dotfiles/aliases/index.sh](./aliases/index.sh) loads all the aliases from other files in the [~/dotfiles/aliases/](./aliases/) directory.
* It is recommended that you group aliases into meaningful files so they are easy to understand. `git.sh` for Git aliases, `docker.sh` for Docker aliases, etc.
* You may want to use the name of your employer as an alias file like we have in this repo, like `granular.sh`, for aliases specific to work at your company. When changing companies, this can be easily deleted from the repo and persist in your git history. However, you might choose to create a `work.sh` instead. The advantage is that a `work.sh` file would be easier to see the history on Github or Gitlab if you want to reference deleted aliases in the future. Deleted files are a bit harder to find in Git once they are gone.
* Check out `adda` in [symlinks/bin/utils/adda](../symlinks/bin/utils/adda) which can be run once you have your dotfiles setup. It creates a new alias and adds it to `aliases/tmp.sh` so you can use it right away and sort it to a folder later 🚀
* When creating aliases, it will be tempting to use an alias in an alias. **Don't.** They are much less easy to share and decipher. For example:
```sh
alias gco='git checkout' # 👍 Good
alias gcom='gco master' # 👎 ❌ BAD, and does not help anyone. The alias has to look up an alias. 🙄
alias gcom='git checkout master' # 👍 Better. 
alias gcom='(git checkout master || git checkout main)' # 🚀 BEST Works in all repos
```
This isn't object-oriented programming. Make your dotfiles *super-easy* to understand when you come back to it in a year. If you want to be clever, do it in a separate script.

## Other Docs

* [Aliases](../aliases/README.md)
* [Symlinks](../symlinks/README.md)
* [Exports](../exports/README.md)
* [Exports/path](../exports/path/README.md)
* [Functions](../functions/README.md)
