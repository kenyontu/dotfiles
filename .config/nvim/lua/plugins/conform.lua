return {
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { { "prettierd", "prettier" } },
        javascriptreact = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        typescriptreact = { { "prettierd", "prettier" } },
        json = { { "prettierd", "prettier" } },
        markdown = { { "prettierd", "prettier" } },
        toml = { { "prettierd", "prettier" } },
        html = { { "prettierd", "prettier" } },
        css = { { "prettierd", "prettier" } },
        scss = { { "prettierd", "prettier" } },
        graphql = { { "prettierd", "prettier" } },
        svelte = { { "prettierd", "prettier" } },
        rust = { "rustfmt" },
        css = { { "prettierd", "prettier" } },
        dart = { "dart_fmt" },
        vue = { { "prettierd", "prettier" } },
        php = { "phpcbf" },
      },
      formatters = {
        rustfmt = {
          meta = {
            url = "https://github.com/rust-lang/rustfmt",
            description = "A tool for formatting Rust code according to style guidelines.",
          },
          command = "rustfmt",
          args = { "--edition", "2021" } 
        }
      }
    }) 

    vim.api.nvim_create_autocmd("BufWritePre", {
      pattern = "*",
      callback = function(args)
        require("conform").format({ bufnr = args.buf, quiet = true })
      end
    })
  end
}
