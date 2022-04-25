vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Collection of configurations for the built-in LSP client
  use 'neovim/nvim-lspconfig'
  use "williamboman/nvim-lsp-installer"

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'glepnir/lspsaga.nvim'

  -- File Explorer
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    }
  }

  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  -- which-key
  use {
    "folke/which-key.nvim",
  }

  -- Show blank
  use "lukas-reineke/indent-blankline.nvim"

  -- Color theme
  use 'rmehri01/onenord.nvim'

  -- Treesitter
  use 'nvim-treesitter/nvim-treesitter'

  -- Status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Error
  use {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  }

  -- Git 
  use {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release
  }

  -- using packer.nvim
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'kyazdani42/nvim-web-devicons'}

  -- Rust
  use 'rust-lang/rust.vim'

  if packer_bootstrap then
    require('packer').sync()
  end

  use 'dense-analysis/ale'

end)

