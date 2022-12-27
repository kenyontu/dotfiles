#!/bin/bash

ln -sf ~/dotfiles/git/.gitconfig ~
ln -sf ~/dotfiles/.tmux.conf ~
ln -sf ~/dotfiles/.prettierrc ~

# Kitty

mkdir ~/.config/kitty
ln -sf ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/
ln -sf ~/dotfiles/.config/kitty/macchiato.conf ~/.config/kitty/
ln -sf ~/dotfiles/.config/kitty/theme.conf ~/.config/kitty/

# Neovim

mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/lua/k
ln -sf ~/dotfiles/.config/nvim/init.lua ~/.config/nvim/
ln -sf ~/dotfiles/.config/nvim/lua/k/plugins.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/base.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/lsp.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/cmp.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/telescope.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/treesitter.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/null-ls.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/mason.lua ~/.config/nvim/lua/k/
ln -sf ~/dotfiles/.config/nvim/lua/k/keymap.lua ~/.config/nvim/lua/k/

# Snippets

mkdir ~/.config/nvim/vscode-snippets
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/package.json ~/.config/nvim/vscode-snippets/
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/js.json ~/.config/nvim/vscode-snippets/
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/react.json ~/.config/nvim/vscode-snippets/
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/redux.json ~/.config/nvim/vscode-snippets/
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/testing.json ~/.config/nvim/vscode-snippets/
ln -sf ~/dotfiles/.config/nvim/vscode-snippets/prisma_schema.json ~/.config/nvim/vscode-snippets/

# Ranger

mkdir ~/.config/ranger
ln -sf ~/dotfiles/.config/ranger/rc.conf ~/.config/ranger/
ln -sf ~/dotfiles/.config/ranger/rifle.conf ~/.config/ranger/
ln -sf ~/dotfiles/.config/ranger/scope.sh ~/.config/ranger/
ln -sf ~/dotfiles/.config/ranger/commands.py ~/.config/ranger/
ln -sf ~/dotfiles/.config/ranger/commands_full.py ~/.config/ranger/

# Python packages

# https://github.com/hhatto/autopep8
# Python auto formatter
pip3 install --upgrade autopep8
