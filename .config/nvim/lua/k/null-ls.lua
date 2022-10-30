local nls = require 'null-ls'
local nlsb = nls.builtins

nls.setup({
  sources = {
    -- diagnostics
    nlsb.diagnostics.eslint,
    nlsb.diagnostics.write_good, -- for markdown
    nlsb.diagnostics.jsonlint,

    -- formatting
    nlsb.formatting.dprint,
    nlsb.formatting.autopep8 -- python
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
})
