#!/usr/bin/env bash

# check vim, git and curl 
(command -v git >/dev/null 2>&1 && command -v curl >/dev/null 2>&1&& command -v vim >/dev/null 2>&1) || {
  echo >&2 "You first need to have vim, git and curl installed. Aborting.";
  exit 1;
}

# make directories
mkdir -p $HOME/.vim
mkdir -p $HOME/.vim/bundle

# get Vundle
if [ ! -d $HOME/.vim/bundle/Vundle.vim ]; then
git clone https://github.com/VundleVim/Vundle.vim $HOME/.vim/bundle/Vundle.vim
fi

# get .vimrc
curl --silent -L https://raw.githubusercontent.com/dm432/vim/master/.vimrc > $HOME/.vimrc

# install plugins
vim +PluginInstall +GoInstallBinaries +qall < /dev/tty

# check if clipboard functionality is enabled
if vim --version | grep -q "\-clipboard"; then
    echo "Warning: Your vim installation does not support the clipboard functionality! To use the system clipboard make sure to install a version of vim with the clipboard functionality. You can do this by installing vim-gtk3 or gvim for example."
fi
