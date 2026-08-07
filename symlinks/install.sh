#!/usr/bin/env zsh
## Setup Symlinks

DOTFILES=${DOTFILES:=~/dotfiles}

##### dotfiles/symlinks/bin
debug "Verifying ~/bin symlink"
if [[ ! -L ~/bin ]]; then
	echo "Symlinking ~/bin"
	chmod +x $DOTFILES/symlinks/bin/*/*
	ln -s $DOTFILES/symlinks/bin ~/bin
fi

##### git
debug "Verifying ~/.gitconfig symlink"
if [[ ! -L ~/.gitconfig ]]; then
	echo "Symlinking ~/.gitconfig"
    ln -s $DOTFILES/symlinks/gitconfig ~/.gitconfig
fi


##### python/pip
debug "Verifying ~/.config/pip symlink"
if [[ ! -L ~/.config/pip ]]; then
	echo "Symlinking ~/.config/pip"
    ln -s $DOTFILES/symlinks/config/pip ~/.config/pip
fi

##### OSX Applications

if [[ $OSTYPE =~ darwin ]]; then
	##### SourceTree
	debug "Verifying ~/bin/stree symlink"
	if [[ ! -L ~/bin/applications/stree ]]; then
		if [[ -x /Applications/Sourcetree.app/Contents/Resources/stree ]]; then
			echo "Symlinking ~/bin/applications/stree"
			ln -s /Applications/Sourcetree.app/Contents/Resources/stree ~/bin/applications/stree
		else
			echo "SourceTree is not installed in /Applications"
		fi
	fi

	debug "Verifying Sublime Text settings are synchronized"
	if [[ ! -L ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ]]; then
		if [[ -d /Applications/Sublime\ Text.app ]]; then
			rm -rf ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
			echo "Forcibly Symlinking ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User for the first time"
			ln -Fs ~/dotfiles/symlinks/Library/Application\ Support/Sublime\ Text\ 3/Packages/User ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
		else
			echo "Sublime Text is not installed in /Applications"
		fi
	fi
fi


echo "Symlinking complete"