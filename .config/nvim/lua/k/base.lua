vim.opt.background = 'dark'
vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.hidden = true
vim.opt.updatetime = 300
-- Force the gutter to stay open instead of constantly openning and closing
vim.opt.signcolumn = "yes"

-- gruvbox-material
--vim.cmd('colorscheme gruvbox-material')
--vim.g.gruvbox_material_background = 'medium'
--vim.cmd('colorscheme oxocarbon')
vim.g.catppuccin_flavour = "macchiato"
require('catppuccin').setup()
vim.cmd('colorscheme catppuccin')

-- For better performance
-- vim.g.gruvbox_material_better_performance = 1

-- nvim-lualine
require('lualine').setup({})

-- nvim-ts-autotag
require('nvim-ts-autotag').setup({})

-- nvim-autopairs
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

require('gitsigns').setup({})

--[[
require("transparent").setup({
  enable = true, -- boolean: enable transparent
  extra_groups = { -- table/string: additional groups that should be cleared
    -- In particular, when you set it to 'all', that means all available groups

    -- example of akinsho/nvim-bufferline.lua
    "BufferLineTabClose",
    "BufferlineBufferSelected",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
  exclude = {}, -- table: groups you don't want to clear
})
]]--

-- Toggleterm
require("toggleterm").setup()

local Terminal  = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  dir = "git_dir",
  direction = "float",
  float_opts = {
    border = "double",
  },
  -- function to run on opening the terminal
  on_open = function(term)
    vim.cmd("startinsert!")
    vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", {noremap = true, silent = true})
  end,
  -- function to run on closing the terminal
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

function _lazygit_toggle()
  lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", {noremap = true, silent = true})

-- Emmet 
vim.g["user_emmet_mode"] = 'i'
vim.g["user_emmet_leader_key"] = '<leader>' -- A prefix, actual command is: <space>,

-- Codi
vim.g["codi#virtual_text"] = 0
vim.g["codi#autocmd"] = "InsertLeave"
vim.g["codi#width"] = 60
vim.g["codi#rightalign"] = 0
vim.g["codi#autoclose"] = 1

-- nvim-comment
require("nvim_comment").setup()
