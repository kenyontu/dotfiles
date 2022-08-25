local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- lspsaga
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap("n", "<leader>a", "<cmd>Lspsaga code_action<CR>", opts)

-- Disabling since I only need to jump between errors
-- keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
-- keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

-- Jump between errors 
keymap("n", ";e", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
keymap("n", ";r", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)

-- Change panes
keymap('n', '<C-j>', '<C-W>j')
keymap('n', '<C-k>', '<C-W>k')
keymap('n', '<C-h>', '<C-W>h')
keymap('n', '<C-l>', '<C-W>l')

-- Telescope
-- Open Telescope
keymap('n', '<C-p>', [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], opts)

-- Disabling keybinds that I don't use to avoid misclicks
keymap('n', 'Q', '<Nop>', opts)

-- replaced by lspsaga 
-- keymap('n', '<space>e', vim.diagnostic.open_float, opts)
-- keymap('n', '[d', vim.diagnostic.goto_prev, opts)
-- keymap('n', ']d', vim.diagnostic.goto_next, opts)
-- keymap('n', '<space>q', vim.diagnostic.setloclist, opts)
