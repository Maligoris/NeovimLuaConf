return {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  dependencies = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional, for manage LSP servers from neovim
    {'williamboman/mason-lspconfig.nvim'}, -- Optional, for manage LSP servers from neovim

    -- Autocompletion
    -- {'hrsh7th/cmp-nvim-lsp'}, -- Required
    -- {"L3MON4D3/LuaSnip"},     -- Required 
    -- {'hrsh7th/nvim-cmp'},     -- Required
    -- {'quangnguyen30192/cmp-nvim-ultisnips'},  -- Для настройки автодополнения 
  },
}
