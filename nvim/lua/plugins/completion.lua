-- Completion engine with Copilot integration

return {
  -- nvim-cmp for completion
  { "hrsh7th/nvim-cmp", event = "InsertEnter", dependencies = {
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-cmdline" },
      { "L3MON4D3/LuaSnip" },
      { "saadparwaiz1/cmp_luasnip" },
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
        }),
      })
    end
  },

	{ 
		"rafamadriz/friendly-snippets",
		config = function()
			require("luasnip.loaders.from_vscode").lazy_load()
		end
	},

  -- Optional: Copilot (toggleable)
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
		event = "InsertEnter",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true },
      panel = { enabled = true },
    },
  },
  {
    "zbirenbaum/copilot-cmp",
    dependencies = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
    enabled = function()
      return vim.g.copilot_enabled or false
    end,
  },
}
