return {
  'windwp/nvim-ts-autotag',
  dependencies = {
    "nvim-treesitter/nvim-treesitter"
  },
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable = true,
        enable_close_on_slash = false,
      }
    })
  end
}
