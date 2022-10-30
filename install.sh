#!/bin/bash

ln -sv ~/dotfiles/git/.gitconfig ~
ln -sv ~/dotfiles/.zshrc ~
ln -sv ~/dotfiles/.tmux.conf ~
ln -sv ~/dotfiles/.prettierrc ~

mkdir ~/.config/kitty
ln -sv ~/dotfiles/.config/kitty/kitty.conf ~/.config/kitty/
ln -sv ~/dotfiles/.config/kitty/theme.conf ~/.config/kitty/

mkdir ~/.config/nvim
mkdir ~/.config/nvim/lua
mkdir ~/.config/nvim/lua/k
ln -sv ~/dotfiles/.config/nvim/init.lua ~/.config/nvim/
ln -sv ~/dotfiles/.config/nvim/lua/k/plugins.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/base.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/lsp.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/cmp.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/telescope.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/treesitter.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/null-ls.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/mason.lua ~/.config/nvim/lua/k/
ln -sv ~/dotfiles/.config/nvim/lua/k/keymap.lua ~/.config/nvim/lua/k/

mkdir ~/.config/nvim/vscode-snippets
ln -sv ~/dotfiles/.config/nvim/vscode-snippets/package.json ~/.config/nvim/vscode-snippets/package.json
ln -sv ~/dotfiles/.config/nvim/vscode-snippets/js.json ~/.config/nvim/vscode-snippets/js.json
ln -sv ~/dotfiles/.config/nvim/vscode-snippets/react.json ~/.config/nvim/vscode-snippets/react.json
ln -sv ~/dotfiles/.config/nvim/vscode-snippets/redux.json ~/.config/nvim/vscode-snippets/redux.json
ln -sv ~/dotfiles/.config/nvim/vscode-snippets/testing.json ~/.config/nvim/vscode-snippets/testing.json

# Python packages

# https://github.com/hhatto/autopep8
# Python auto formatter
pip3 install --upgrade autopep8
