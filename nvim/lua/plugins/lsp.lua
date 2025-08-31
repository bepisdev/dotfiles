-- LSP configuration

return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    opts = function (_, opts)
      local esp32 = require("esp32")
      opts.servers = opts.servers or {}
      opts.servers.clangd = esp32.lsp_config()
      return opts
    end
  },

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
	{ "isobit/vim-caddyfile" },

  -- esp32 specific development
  { "Aietes/esp32.nvim" },
}
