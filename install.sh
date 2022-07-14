#!/bin/bash

ln -sv ~/dotfiles/git/.gitconfig ~
ln -sv ~/dotfiles/.zshrc ~
ln -sv ~/dotfiles/.vimrc ~
ln -sv ~/dotfiles/.tmux.conf ~
ln -sv ~/dotfiles/.prettierrc ~

mkdir ~/.config/kitty
ln -sv ~/dotfiles/kitty/kitty.conf ~/.config/kitty/
ln -sv ~/dotfiles/kitty/theme.conf ~/.config/kitty/

mkdir ~/.config/nvim
ln -sv ~/dotfiles/nvim/init.vim ~/.config/nvim/
ln -sv ~/dotfiles/nvim/coc-settings.json ~/.config/nvim/
