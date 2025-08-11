-- Keymaps and which-key configuration module

local wk = require("which-key")
local Terminal = require('toggleterm.terminal').Terminal

-- Window Resizing Shortcuts
vim.keymap.set('n', '<C-S-Left>', '<cmd>vertical resize +5<cr>')
vim.keymap.set('n', '<C-S-Right>', '<cmd>vertical resize -5<cr>')
vim.keymap.set('n', '<C-S-Up>', '<cmd>resize +5<cr>')
vim.keymap.set('n', '<C-S-Down>', '<cmd>resize -5<cr>')

-- LSP Saga Shortcuts
vim.keymap.set('n', '[e', '<cmd>Lspsaga show_line_diagnostics<cr>')
vim.keymap.set('n', '[E', '<cmd>Lspsaga show_buf_diagnostics<cr>')
vim.keymap.set('n', '[a', '<cmd>Lspsaga code_action<cr>')
vim.keymap.set('n', '[o', '<cmd>Lspsaga outline<cr>')
vim.keymap.set('n', '[d', '<cmd>Lspsaga hover_doc<cr>')


-- Terminal Mode <ESC> support
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]])
vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]])

-- Toggle Terminal from Normal
vim.keymap.set('n', '<C-t>t', '<cmd>ToggleTerm<cr>')

return {
{
		"folke/which-key.nvim",
		event = "VeryLazy",
		opts = {},
		keys = {
			-- Telescope
			wk.add({{"<leader><space>", "<cmd>Telescope<cr>", desc="Telescope"}}),

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

			-- Git
			wk.add({
				{ "<leader>g",  group = "+git" },
				{ "<leader>gg", "<cmd>LazyGit<cr>",            desc = "LazyGit" },
				{ "<leader>gl", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit Current File" },
			}),

			-- Terminal
			wk.add({
				{ "<leader>t",  group = "+terminal" },
				{ "<leader>tt", "<cmd>ToggleTerm<cr>",                      desc = "show/hide last terminal" },
				{ "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "horizontal terminal" },
				{ "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>",   desc = "vertical terminal" },
				{ "<leader>tf", "<cmd>ToggleTerm direction=float<cr>",      desc = "float terminal" },
				{ "<leader>tg", _lazygit_toggle,														desc = "git terminal" },
			}),

			-- Completion
			wk.add({
				{ "<leader>c",  group = "+completion" },
				{ "<leader>cs", "<cmd>LuaSnipListAvailable<cr>", desc = "List available snippets" },
				{ "<leader>cS", "<cmd>CmpStatus<cr>",						 desc = "nvim-cmp status" },
			}),

			-- Prose and Document editing
			wk.add({
				{ "<leader>d",  group = "prose and document editing" },
				{ "<leader>dd",  "<cmd>ZenMode<cr>",							 desc = "Toggle ZenMode" },
				{ "<leader>dt",  "<cmd>Twilight<cr>",							 desc = "Toggle Twilight" },
				{ "<leader>dm",  "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
			})
		}
	}
}
