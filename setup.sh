#!/bin/bash

ln -sf ~/dotfiles/_vimrc ~/.vimrc
ln -sf ~/dotfiles/_zshrc ~/.zshrc
ln -sf ~/dotfiles/_tmux.conf ~/.tmux.conf

if [ "$(uname)" == 'Darwin' ]; then
  echo "mac"
elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
  echo "linux"
fi

