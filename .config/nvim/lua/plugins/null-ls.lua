return {
  'jose-elias-alvarez/null-ls.nvim',
  config = function()
    local nls = require 'null-ls'
    local nlsb = nls.builtins

    nls.setup({
      sources = {
        -- diagnostics
        nlsb.diagnostics.eslint,
        nlsb.diagnostics.write_good, -- for markdown
        nlsb.diagnostics.jsonlint,

        -- formatting
        nlsb.formatting.prettierd.with({
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "json",
            "markdown",
            "toml",
            "css",
            "scss",
            "less",
            "html",
            "graphql",
            "vue"
          },
          extra_filetypes = { 
            "svelte",
          },
        }),
        nlsb.formatting.rustfmt, -- rust
        nlsb.formatting.autopep8, -- python
        nlsb.formatting.dart_format,
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
  end
}
