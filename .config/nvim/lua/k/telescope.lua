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

