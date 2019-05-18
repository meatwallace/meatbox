#!/bin/sh

set -eu

if [ ! -d "$HOME/.vim" ]; then
  mkdir "$HOME/.vim"
fi

# symlink our vim config into the .vim folder
ln -fs "$HOME/.vimrc" "$HOME/.vim/init.vim"

# symlink our vim folder into our config folder
ln -fs "$HOME/.vim" "$HOME/.config/nvim"

