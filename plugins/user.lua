return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax

  -- editing plugins
  -- "tpope/vim-abolish",
  -- "tpope/vim-surround",
  -- "tpope/vim-repeat",
  -- "kylechui/nvim-surround",
  -- "machakann/vim-sandwich"

  -- add lsp plugin
  "jose-elias-alvarez/typescript.nvim", 
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "tsserver" }, -- automatically install lsp
    },
  },

  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
}
