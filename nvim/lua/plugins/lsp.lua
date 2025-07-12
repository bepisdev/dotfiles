-- LSP configuration

return {
  -- LSP Config
  { "neovim/nvim-lspconfig" },

  -- Mason for managing LSP servers
  { "williamboman/mason.nvim", config = true },
  { "williamboman/mason-lspconfig.nvim", config = true },

  -- LSP status, progress, etc.
  { "j-hui/fidget.nvim", tag = "legacy", config = true },

  -- LSP UI enhancements
  { "glepnir/lspsaga.nvim", branch = "main", config = true },
}