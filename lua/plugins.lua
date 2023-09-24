return { 
  -- Plugins will be added here accordingly.
  
  -- Colorscheme
  { 'folke/tokyonight.nvim', },
  { "catppuccin/nvim", name = "catppuccin", lazy = true, priority = 1000 },
  { "neanias/everforest-nvim", lazy = true, priority = 1000 },
  { "rebelot/kanagawa.nvim", lazy = true, priority = 1000},
  { "ellisonleao/gruvbox.nvim", lazy = true, priority = 1000},
  { "savq/melange-nvim", lazy = true, priority = 1000 },
  { 'rose-pine/neovim', name = 'rose-pine', priority = 1000 },

  -- lualine
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },

  -- Nvimtree (File Explorer)
  { 'nvim-tree/nvim-tree.lua', lazy = true, dependencies = { 'nvim-tree/nvim-web-devicons', }, },

  -- Language Support
  {
    'VonHeikemen/lsp-zero.nvim', branch = 'v1.x', dependencies = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},             -- Required
      {'williamboman/mason.nvim'},           -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional
      -- Autocompletion
      {'hrsh7th/nvim-cmp'},         -- Required
      {'hrsh7th/cmp-nvim-lsp'},     -- Required
      -- {'hrsh7th/cmp-buffer'},       -- Optional
      -- {'hrsh7th/cmp-path'},         -- Optional
      -- {'saadparwaiz1/cmp_luasnip'}, -- Optional
      -- {'hrsh7th/cmp-nvim-lua'},     -- Optional
      -- Snippets
      {'L3MON4D3/LuaSnip'},             -- Required
      -- {'rafamadriz/friendly-snippets'}, -- Optional
    }
  },
}
