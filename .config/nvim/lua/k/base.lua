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

-- gruvbox-material
vim.cmd('colorscheme gruvbox-material')
vim.g.gruvbox_material_background = 'medium'
-- For better performance
-- vim.g.gruvbox_material_better_performance = 1

-- nvim-lualine
require('lualine').setup {
  options = {
    theme = 'gruvbox-material'
  }
}

-- nvim-ts-autotag
require('nvim-ts-autotag').setup({})

-- nvim-autopairs
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})

require('gitsigns').setup({})
