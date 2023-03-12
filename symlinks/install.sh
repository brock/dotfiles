#!/usr/bin/env zsh
## Setup Symlinks

DOTFILES=${DOTFILES:=~/dotfiles}
source ${DOTFILES}/functions/debug.sh

##### zsh
debug "Verifying ~/.zprofile symlink"
if [[ ! -L ~/.zprofile ]]; then
	echo "Symlinking ~/.zprofile"
    ln -s $DOTFILES/symlinks/zsh/zprofile.sh ~/.zprofile
fi

debug "Verifying ~/.zshrc symlink"
if [[ ! -L ~/.zshrc ]]; then
	echo "Symlinking ~/.zshrc"
    ln -s $DOTFILES/symlinks/zsh/zshrc.sh ~/.zshrc
fi

debug "Verifying ~/.oh-my-zsh/themes/smt-mod.zsh-theme symlink"
if [[ ! -L ~/.oh-my-zsh/themes/smt-mod.zsh-theme ]]; then
	echo "Symlinking ~/.oh-my-zsh/themes/smt-mod.zsh-theme"
    ln -s $DOTFILES/symlinks/zsh/smt-mod.zsh-theme ~/.oh-my-zsh/themes/smt-mod.zsh-theme
fi

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

##### vim
debug "Verifying ~/.vimrc symlink"
if [[ ! -L ~/.vimrc ]]; then
	echo "Symlinking ~/.vimrc"
    ln -s $DOTFILES/symlinks/vimrc ~/.vimrc
fi

##### asdf
debug "Verifying ~/.asdfrc symlink"
if [[ ! -L ~/.asdfrc ]]; then
	echo "Symlinking ~/.asdfrc"
    ln -s $DOTFILES/symlinks/asdfrc ~/.asdfrc
fi

debug "Verifying ~/.tool-versions symlink"
if [[ ! -L ~/.tool-versions ]]; then
	echo "Symlinking ~/.tool-versions"
    ln -s $DOTFILES/symlinks/tool-versions ~/.tool-versions
fi

debug "Verifying ~/.default-python-packages symlink"
if [[ ! -L ~/.default-python-packages ]]; then
	echo "Symlinking ~/.default-python-packages"
    ln -s $DOTFILES/symlinks/default-python-packages ~/.default-python-packages
fi

##### python/pip
debug "Verifying ~/.pip symlink"
if [[ ! -L ~/.pip ]]; then
	echo "Symlinking ~/.pip"
    ln -s $DOTFILES/symlinks/pip ~/.pip
fi

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

echo "Symlinking complete"