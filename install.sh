#!/bin/bash

ln -sf ~/dotfiles/git/.gitconfig ~
ln -sf ~/dotfiles/.tmux.conf ~
ln -sf ~/dotfiles/.prettierrc ~

# Kitty

ln -s ~/dotfiles/.config/kitty/ ~/.config/kitty/

# Neovim

mkdir ~/.config/nvim
ln -s ~/dotfiles/.config/nvim/lua/ ~/.config/nvim/lua/

# Snippets

mkdir ~/.config/nvim/vscode-snippets
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/package.json ~/.config/nvim/vscode-snippets/

# Ranger

mkdir ~/.config/ranger
ln -s ~/dotfiles/.config/ranger/ ~/.config/ranger/

# Python packages

# https://github.com/hhatto/autopep8
# Python auto formatter
# pip3 install --upgrade autopep8
