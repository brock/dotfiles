# Functions

* Very few "scripts" in bash or zsh need to be functions, and should instead be scripts. A couple of reasons:
	* Functions are loaded into your shell and stored in memory and add more time to loading new shells.
	* Functions are typically only needed if you need to perform an action in the current shell (and not a subshell, or subprocess).
* Small functions can typically be aliases, since aliases don't run in a subshell, but occassionally you need something more complicated
* There's nothing keeping you from keeping all of these functions in a single file and sourcing a `functions.sh`, but I find it cleaner and more consistent to use the format of one file per function.

Functions look like this:

```
function the_name(){
	# comment block
	code block
}
```

## Other Docs

* [Aliases](../aliases/README.md)
* [Symlinks](../symlinks/README.md)
* [Exports](../exports/README.md)
* [Exports/path](../exports/path/README.md)
* [Functions](../functions/README.md)
