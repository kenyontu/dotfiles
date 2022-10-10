local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key keymaps
keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- lspsaga
keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
--keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
--keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
--keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap("n", "<leader>c", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", { silent = true })

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

-- Leap
require('leap').set_default_keymaps()

-- Harpoon
keymap('n', '<leader>a', function()
  require("harpoon.mark").add_file()
end, opts)
keymap('n', '<leader>h', function()
  require("harpoon.ui").toggle_quick_menu()
end, opts)
keymap('n', '<leader>n', function()
  require("harpoon.ui").nav_next()   
end, opts)
keymap('n', '<leader>p', function()
  require("harpoon.ui").nav_prev()   
end, opts)

-- Toggleterm
keymap('n', '<leader>tt', ':ToggleTerm dir=git_dir direction=float<CR>', opts)
--keymap('t', '<esc>', [[<C-\><C-n>]], opts)
--keymap('t', 'jk', [[<C-\><C-n>]], opts)
keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
keymap('n', '<leader>tl', ':ToggleTermSendCurrentLine<CR>')
keymap('v', '<leader>ts', ':ToggleTermSendVisualLines<CR>')

-- Disabling keybinds that I don't use to avoid misclicks
keymap('n', 'Q', '<Nop>', opts)
keymap('n', 'q', '<Nop>', opts)

-- Runs :w when typing :W 
vim.api.nvim_create_user_command('W', 'w', {})

-- Runs :q when typing :Q 
vim.api.nvim_create_user_command('Q', 'q', {})
