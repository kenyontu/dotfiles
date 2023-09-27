local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup('plugins')

vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.number = true
--vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.updatetime = 300

-- Force the gutter to stay open instead of constantly openning and closing
vim.opt.signcolumn = "yes"

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key keymaps
keymap("n", "<space>w", ":w<CR>", opts)
keymap("n", "<space>q", ":q<CR>", opts)

-- Clears search highlight
keymap("n", "<ESC>", ":nohlsearch<Bar>:echo<CR>", default_options)

-- Change panes
keymap('n', '<C-j>', '<C-W>j')
keymap('n', '<C-k>', '<C-W>k')
keymap('n', '<C-h>', '<C-W>h')
keymap('n', '<C-l>', '<C-W>l')

-- Diagnostics
keymap("n", "<leader>d", "<Cmd>lua vim.diagnostic.open_float()<CR>", opts)

-- Disabling keybinds that I don't use to avoid misclicks
keymap('n', 'Q', '<Nop>', opts)
keymap('n', 'q', '<Nop>', opts)

-- Runs :w when typing :W 
vim.api.nvim_create_user_command('W', 'w', {})

-- Runs :q when typing :Q 
vim.api.nvim_create_user_command('Q', 'q', {})
