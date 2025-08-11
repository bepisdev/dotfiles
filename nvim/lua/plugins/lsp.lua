-- LSP configuration

return {
  -- LSP Config
  { "neovim/nvim-lspconfig"	},

  -- Mason for managing LSP servers
  { "williamboman/mason.nvim", opts = {} },
  { "williamboman/mason-lspconfig.nvim", config = true },

  -- LSP status, progress, etc.
  { "j-hui/fidget.nvim", tag = "legacy", config = true },

  -- LSP UI enhancements
  { "glepnir/lspsaga.nvim", branch = "main", config = true },

	-- Vim API polyfill for Lua
	{ "folke/lazydev.nvim", ft = "lua", config = true },

	-- Caddyfile syntax
	{ "isobit/vim-caddyfile" }
}
