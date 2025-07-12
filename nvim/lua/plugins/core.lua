-- Core functionality plugins

return {
  -- Fuzzy finder (Telescope)
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  -- Dashboard
  { "nvimdev/dashboard-nvim", event = "VimEnter", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- Commenting
  { "tpope/vim-commentary" },

  -- Autopairs
  { "windwp/nvim-autopairs", config = true },

  -- Better escape
  { "max397574/better-escape.nvim", event = "InsertEnter", opts = {} },

  -- Which-key for keybindings
  { "folke/which-key.nvim", event = "VeryLazy", config = true },

  -- Useful Lua functions (dependency for many)
  { "nvim-lua/plenary.nvim" },
}
