local mason = require 'mason'
local mlspconfig = require 'mason-lspconfig'

mason.setup({})

mlspconfig.setup {
  ensure_installed = {
    "sumneko_lua",
    "tailwindcss",
    "html",
    "tsserver",
    "eslint",
    "cssls",
    "emmet_ls",
    "rust_analyzer"
  },
}
