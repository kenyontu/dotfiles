#!/bin/bash

ln -sf ~/dotfiles/git/.gitconfig ~
ln -sf ~/dotfiles/.tmux.conf ~
ln -sf ~/dotfiles/.prettierrc ~

# Kitty

ln -s ~/dotfiles/.config/kitty/ ~/.config/

# Neovim

mkdir ~/.config/nvim
ln -s ~/dotfiles/.config/nvim/init.lua ~/.config/nvim/
ln -s ~/dotfiles/.config/nvim/lua/ ~/.config/nvim/

# Snippets

mkdir ~/.config/nvim/vscode-snippets
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/package.json ~/.config/nvim/vscode-snippets/

# Ranger

mkdir ~/.config/ranger
ln -s ~/dotfiles/.config/ranger/ ~/.config/ranger/

# Starship
ln -s ~/dotfiles/.config/starship.toml ~/.config/starship.toml

# Python packages

# https://github.com/hhatto/autopep8
# Python auto formatter
# pip3 install --upgrade autopep8
