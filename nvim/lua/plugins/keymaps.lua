-- Keymaps and which-key configuration module

local wk = require("which-key")
return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			-- Telescope
			wk.add({
				{ "<leader>f", group = "+find"},
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files"},
				{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "live grep"},
				{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "buffers"},
				{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "help tags"},
				{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "recent files"},
				{ "<leader>fp", "<cmd>Telescope projects<cr>", desc = "projects"},
			}),

			-- LSP
			wk.add({
				{ "<leader>l", group = "+lsp"},
				{ "<leader>li", "<cmd>LspInfo<cr>", desc = "LSP info"},
				{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "rename"},
				{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "code action"},
				{ "<leader>lo", "<cmd>Lspsaga outline<cr>", desc = "outline"},
				{ "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "definition"},
				{ "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "declaration"},
				{ "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>", desc = "format"},
			}),

			-- Git
			wk.add({
				{ "<leader>g", group = "+git"},
				{ "<leader>gs", "<cmd>Git<cr>", desc = "status"},
				{ "<leader>gc", "<cmd>Git commit<cr>", desc = "commit"},
				{ "<leader>gp", "<cmd>Git push<cr>", desc = "push"},
				{ "<leader>gl", "<cmd>Git pull<cr>", desc = "pull"},
				{ "<leader>gb", "<cmd>Git blame<cr>", desc = "blame"},
				{ "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "diff"},
			}),

			-- Toggles
			wk.add({
				{ "<leader>t", group = "+toggle"},
				{ "<leader>te", "<cmd>NvimTreeToggle<cr>", desc = "file explorer"},
				{ "<leader>tT", "<cmd>Telescope<cr>", desc = "Telescope UI"},
				{ "<leader>tt", group = "+terminal"},
				{ "<leader>tth", "<cmd>ToggleTerm size=20 direction=horizontal<cr>", desc = "horizontal terminal"},
				{ "<leader>ttv", "<cmd>ToggleTerm size=75 direction=vertical<cr>", desc = "vertical terminal"},
			}),
		}
	}
}
