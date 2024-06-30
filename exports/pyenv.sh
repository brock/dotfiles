PYENV_ROOT="$HOME/.pyenv"
test -d ${PYENV_ROOT} || (echo "No ${PYENV_ROOT} found. Exiting... " && exit 1)

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

# eval "$(pyenv virtualenv-init -)"