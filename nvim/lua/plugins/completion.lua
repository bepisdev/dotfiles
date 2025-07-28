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
      { "onsails/lspkind.nvim" },
    },
    config = function()
      local cmp = require("cmp")
			local lspkind = require("lspkind")
			-- lspkind configuration
			lspkind.init({
				symbol_map = {
					Text = "",
					Method = "ƒ",
					Function = "",
					Constructor = "",
					Field = "",
					Variable = "",
					Class = "",
					Interface = "ﰮ",
					Module = "",
					Property = "",
					Unit = "",
					Value = "",
					Enum = "",
					Keyword = "",
					Snippet = "",
					Color = "",
					File = "",
					Reference = "",
					Folder = "ﱮ",
					EnumMember = "",
					Constant = "",
					Struct = "",
					Copilot = "",
				},
			})
			-- nvim-cmp configuration
      cmp.setup({
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol_text",
						maxwidth = 50,
						abbr = 50,
						ellipsis_char = "...",
						show_labelDetails = true,
					}),
				},
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
					{ name = "copilot" },
          { name = "nvim_lsp" },
          { name = "luasnip" },
        }, {
          { name = "buffer" },
          { name = "path" },
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

  -- Copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require('copilot').setup({
				suggestion = { enabled = false },
				panel = { enabled = false },
			})
		end
  },
  {
    "zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end
  },
	{ "mattn/vim-sonictemplate" }
}
