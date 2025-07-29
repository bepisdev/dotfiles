-- Keymaps and which-key configuration module

local wk = require("which-key")
return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			-- Telescope
			wk.add({{"<leader><space>", "<cmd>Telescope<cr>", desc="Telescope"}}),

			-- Window Resizing Shortcuts
			vim.keymap.set('n', '<C-S-Left>', '<cmd>vertical resize +5<cr>'),
			vim.keymap.set('n', '<C-S-Right>', '<cmd>vertical resize -5<cr>'),
			vim.keymap.set('n', '<C-S-Up>', '<cmd>resize +5<cr>'),
			vim.keymap.set('n', '<C-S-Down>', '<cmd>resize -5<cr>'),

			-- Telescope
			wk.add({
				{ "<leader>f",  group = "+find" },
				{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
				{ "<leader>fg", "<cmd>Telescope live_grep<cr>",  desc = "live grep" },
				{ "<leader>fb", "<cmd>Telescope buffers<cr>",    desc = "buffers" },
				{ "<leader>fh", "<cmd>Telescope help_tags<cr>",  desc = "help tags" },
				{ "<leader>fr", "<cmd>Telescope oldfiles<cr>",   desc = "recent files" },
			}),

			wk.add({
				{ "<leader>p",  group = "+projects" },
				{ "<leader>pp", "<cmd>Telescope projects<cr>", desc = "switch project" },
				{ "<leader>pa", "<cmd>AddProject<cr>",         desc = "add project" },
				{ "<leader>pt", "<cmd>NvimTreeToggle<cr>",     desc = "file tree" },
			}),

			-- LSP
			wk.add({
				{ "<leader>l",  group = "+lsp" },
				{ "<leader>li", "<cmd>LspInfo<cr>",                       desc = "LSP info" },
				{ "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>",      desc = "rename" },
				{ "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "code action" },
				{ "<leader>lo", "<cmd>Lspsaga outline<cr>",               desc = "outline" },
				{ "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<cr>",  desc = "definition" },
				{ "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "declaration" },
				{ "<leader>lf", "<cmd>lua vim.lsp.buf.format()<cr>",      desc = "format" },
			}),
			vim.keymap.set('n', '[e', '<cmd>Lspsaga show_line_diagnostics<cr>'),
			vim.keymap.set('n', '[E', '<cmd>Lspsaga show_buf_diagnostics<cr>'),
			vim.keymap.set('n', '[a', '<cmd>Lspsaga code_action<cr>'),
			vim.keymap.set('n', '[o', '<cmd>Lspsaga outline<cr>'),
			vim.keymap.set('n', '[d', '<cmd>Lspsaga hover_doc<cr>'),

			-- Git
			wk.add({
				{ "<leader>g",  group = "+git" },
				{ "<leader>gs", "<cmd>Git<cr>",        desc = "status" },
				{ "<leader>gc", "<cmd>Git commit<cr>", desc = "commit" },
				{ "<leader>gp", "<cmd>Git push<cr>",   desc = "push" },
				{ "<leader>gl", "<cmd>Git pull<cr>",   desc = "pull" },
				{ "<leader>gb", "<cmd>Git blame<cr>",  desc = "blame" },
				{ "<leader>gd", "<cmd>Gdiffsplit<cr>", desc = "diff" },
			}),

			-- Terminal
			wk.add({
				{ "<leader>t",  group = "+terminal" },
				{ "<leader>tt", "<cmd>ToggleTerm<cr>",                      desc = "show/hide last terminal" },
				{ "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "horizontal terminal" },
				{ "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>",   desc = "vertical terminal" },
				{ "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",      desc = "float terminal" },
			}),
			vim.keymap.set('t', '<esc>', [[<C-\><C-n>]]),
			vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]]),

			-- Toggles
			vim.keymap.set('n', '<C-t>t', '<cmd>ToggleTerm<cr>'),
			vim.keymap.set('n', '<C-t>T', '<cmd>Telescope<cr>'),

			-- Completion
			wk.add({
				{ "<leader>c",  group = "+completion" },
				{ "<leader>cs", "<cmd>LuaSnipListAvailable<cr>", desc = "List available snippets" },
				{ "<leader>cS", "<cmd>CmpStatus<cr>", desc = "nvim-cmp status" },
			}),

			-- Prose and Document editing
			wk.add({
				{ "<leader>d",  group = "prose and document editing" },
				{ "<leader>dd",  "<cmd>ZenMode<cr>", desc = "Toggle ZenMode" },
				{ "<leader>dt",  "<cmd>Twilight<cr>", desc = "Toggle Twilight" },
				{ "<leader>dm",  "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
			})
		}
	}
}
