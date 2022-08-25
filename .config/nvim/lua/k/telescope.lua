local telescope = require 'telescope'
local actions = require 'telescope.actions'
local builtin = require 'telescope.builtin'
local fb_actions = telescope.extensions.file_browser.actions

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["-"] = fb_actions.goto_parent_dir,
      },
    },
  },
  extensions = {
    file_browser = {
      path = "%:p:h",
      grouped = true,
      hijack_netrw = true,
      hide_parent_dir = true,
      hidden = true,
      initial_mode = "normal"
    },
  },
}

telescope.load_extension("file_browser")

-- keymaps
vim.keymap.set('n', ';f',
  function()
    builtin.find_files({
      no_ignore = false,
      hidden = true
    })
  end)

vim.keymap.set('n', ';r', function()
  builtin.live_grep()
end)

vim.keymap.set('n', '\\\\', function()
  builtin.buffers()
end)

vim.keymap.set('n', ';t', function()
  builtin.help_tags()
end)

vim.keymap.set('n', ';;', function()
  builtin.resume()
end)

vim.keymap.set('n', ';e', function()
  builtin.diagnostics()
end) 

vim.keymap.set("n", "-", function()
  telescope.extensions.file_browser.file_browser({})
end)
