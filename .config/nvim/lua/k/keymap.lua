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

-- //////////////
-- lspsaga
-- //////////////

keymap('n', 'K', '<Cmd>Lspsaga hover_doc<CR>', opts)
keymap('n', 'gd', '<Cmd>Lspsaga lsp_finder<CR>', opts)
--keymap('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
--keymap('n', 'gp', '<Cmd>Lspsaga preview_definition<CR>', opts)
--keymap('n', 'gr', '<Cmd>Lspsaga rename<CR>', opts)
keymap("n", "<leader>a", "<cmd>Lspsaga code_action<CR>", opts)
--keymap("n", "<leader>d", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)

-- Disabling since I only need to jump between errors
-- keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
-- keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)

-- Jump between errors 
keymap("n", "<space>e", function()
  require("lspsaga.diagnostic").goto_prev({ severity = vim.diagnostic.severity.ERROR })
end, opts)
keymap("n", "<space>r", function()
  require("lspsaga.diagnostic").goto_next({ severity = vim.diagnostic.severity.ERROR })
end, opts)

-- //////////////
-- Telescope
-- //////////////

-- Git files
keymap('n', '<C-p>', [[<Cmd>lua require('telescope.builtin').git_files()<CR>]], opts)
-- File browser
keymap("n", "-", [[<Cmd>lua require('telescope').extensions.file_browser.file_browser({})<CR>]], opts)
--  telescope.extensions.file_browser.file_browser({})

-- //////////////
-- Leap
-- //////////////

require('leap').set_default_keymaps()

-- //////////////
-- Harpoon
-- //////////////

keymap('n', '<space>g', [[<Cmd>lua require('harpoon.mark').add_file()<CR>]], opts)
keymap('n', '<space>h', [[<Cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>]], opts)
keymap('n', '<space>j', [[<Cmd>lua require('harpoon.ui').nav_file(1)<CR>]], opts)
keymap('n', '<space>k', [[<Cmd>lua require('harpoon.ui').nav_file(2)<CR>]], opts)
keymap('n', '<space>l', [[<Cmd>lua require('harpoon.ui').nav_file(3)<CR>]], opts)
keymap('n', '<space>;', [[<Cmd>lua require('harpoon.ui').nav_file(4)<CR>]], opts)

-- //////////////
-- Toggleterm
-- //////////////

keymap('n', '<space>t', ':ToggleTerm dir=git_dir direction=float<CR>', opts)
--keymap('t', '<esc>', [[<C-\><C-n>]], opts)
keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
keymap('n', '<leader>t', ':ToggleTermSendCurrentLine<CR>')
keymap('v', '<leader>t', ':ToggleTermSendVisualLines<CR>')


