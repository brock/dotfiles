# bin

This is the preferred way to add a script or utility to your dotfiles. The contents of the script aren't loaded into memory when you open a new shell, so your terminal loads faster than if they were all functions, but since the directories are added to your PATH, these scripts can be run anywhere in your shell (in ~/Desktop, ~/repos, etc).

The files in `bin` are scripts that you want to be available anywhere on the command line. This is acommplished by adding `~/dotfiles/bin` to your `$PATH` environment variable.

However, you could follow the convention of using `~/bin` for your personal executables in just a few steps:

* The `~/dotfiles/bin` directory gets symlinked to `~/bin`. 
* The files are set to exectuable by running `chmod +x the_file`
* The `~/bin` directory is added to the `$PATH` variable. Now any file in `~/dotfiles/bin` can be run from anywhere

> Note: it would also be possible to simply add `~/dotfiles/bin` to the `$PATH` variable, but `~/bin` is a Bash and Unix convention for storing your personal executables.

## Other Docs

* [Aliases](../../aliases/README.md)
* [Symlinks](../../symlinks/README.md)
* [Exports](../../exports/README.md)
* [Exports/path](../../exports/path/README.md)
* [Functions](../../functions/README.md)
