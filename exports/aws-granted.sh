if command -v granted &> /dev/null; then
    # setup the assume command
    unalias assume &> /dev/null
    local assume_path=$(which assume)
    alias assume="source $assume_path"

    # reload completions if needed
    assume-completions-reload() {
        granted completion -s zsh
    }
fi