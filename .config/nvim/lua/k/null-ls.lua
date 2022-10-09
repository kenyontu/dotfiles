local nls = require 'null-ls'
local nlsb = nls.builtins

nls.setup({
  sources = {
    -- diagnostics
    -- nlsb.diagnostics.eslint_d.with({
    --  diagnostics_format = '[eslint] #{m}\n(#{c})'
    --}),
    nlsb.diagnostics.eslint,
    nlsb.diagnostics.write_good, -- for markdown
    nlsb.diagnostics.jsonlint,

    -- formatting
    nlsb.formatting.prettierd,
    nlsb.formatting.rustfmt,
    nlsb.formatting.fixjson,
  },
  on_attach = function(client, bufnr)
    if client.resolved_capabilities.document_formatting then
      vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()")
    end
  end,
})
