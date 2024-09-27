# ZSH

### Loading order

Zsh read these files in the following order:

1. `~/.zshenv` - Should only contain user’s environment variables.
1. `~/.zprofile` - Can be used to execute commands just after logging in.
1. `~/.zshrc` - Should be used for the shell configuration and for executing commands.
1. `~/.zlogin` - Same purpose than .zprofile, but read just after .zshrc.
1. `~/.zlogout` - Can be used to execute commands when a shell exit.

[source - thevaluable.dev](https://thevaluable.dev/zsh-install-configure-mouseless/)