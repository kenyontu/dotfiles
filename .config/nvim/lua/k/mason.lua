local mason = require 'mason'
local mlspconfig = require 'mason-lspconfig'

mason.setup({})

mlspconfig.setup {
  ensure_installed = {
    "tailwindcss",
    "html",
    "tsserver",
    "eslint",
    "cssls",
    "emmet_ls",
    "rust_analyzer"
  },
}
