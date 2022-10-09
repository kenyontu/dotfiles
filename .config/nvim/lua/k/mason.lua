local mason = require 'mason'
local mlspconfig = require 'mason-lspconfig'

mason.setup({})

mlspconfig.setup {
  ensure_installed = {
    "sumneko_lua",
    "tailwindcss",
    "html-lsp",
    "typescript-language-server",
    "eslint_d",
    "prettierd",
    "css-ls",
    "emmet-ls",
    "rust-analyzer"
  },
}
