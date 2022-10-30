local packer = require "packer"

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'kyazdani42/nvim-web-devicons'

  -- Color scheme
  use 'sainnhe/gruvbox-material'
  use { "catppuccin/nvim", as = "catppuccin" }

  -- Status line
  use 'nvim-lualine/lualine.nvim'

  -- LSP config
  use 'neovim/nvim-lspconfig'

  -- Auto-completion and snippets
  use 'onsails/lspkind-nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'glepnir/lspsaga.nvim'
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  -- Snippets
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Emmet
  use 'mattn/emmet-vim'

  -- Prettier
  use 'MunifTanjim/prettier.nvim'
  
  -- Tree sitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Auto-close pairs
  use 'windwp/nvim-autopairs'

  -- Auto-close html tags
  use 'windwp/nvim-ts-autotag'

  -- Telescope
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Movement
  use 'ThePrimeagen/harpoon'
  use 'ggandor/leap.nvim'

  -- Comment
  use "terrortylor/nvim-comment"

  -- Git
  use 'lewis6991/gitsigns.nvim'

  -- Colorizer
  use 'norcalli/nvim-colorizer.lua'

  -- Markdown preview
  use "ellisonleao/glow.nvim"

  -- Make nvim transparent
  --use "xiyaowong/nvim-transparent"

  -- Terminal
  use {"akinsho/toggleterm.nvim", tag = '*'}

  -- Prototyping & Repl
  use "metakirby5/codi.vim"

  -- Rust
  -- use "simrat39/rust-tools.nvim"
end)
