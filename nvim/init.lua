-- Set leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Indentation Settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.softtabstop = 2
vim.expandtab = true

-- Line Numbers
vim.wo.number = true

-- Color support
vim.opt.termguicolors = true

-- Sign Column
vim.opt.signcolumn = "yes"

-- Term Colors
vim.opt.termguicolors = true
vim.cmd("colorscheme ryuuko")

-- Copy to system clipboard
vim.api.nvim_set_option("clipboard", "unnamed")

-- Lazy.nvim bootstrap (if not already installed)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "plugins.core" },
	{ import = "plugins.ui" },
	{ import = "plugins.lsp" },
	{ import = "plugins.treesitter" },
	{ import = "plugins.git" },
	{ import = "plugins.completion" },
	{ import = "plugins.project" },
	{ import = "plugins.terminal" },
	{ import = "plugins.dashboard" },
	{ import = "plugins.telescope_ext" },
	{ import = "plugins.prose" },
	{ import = "plugins.keymaps" },
})

-- Initialize telescope extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('projects')

require("nvim-tree").setup({
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
	update_focused_file = {
		enable = true,
		update_root = true
	},
})

require("lspconfig").bashls.setup({
	filetypes = { "sh", "bash", "zsh" },
})

require('lspconfig').lua_ls.setup({
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

-- Enable syntax detection from shebang lines
vim.api.nvim_create_autocmd({ "Filetype" }, {
  group = vim.api.nvim_create_augroup("CustomShebangDetection", {}),
  desc = "Set the filetype based on the shebang header",
  callback = function()
    local line = vim.fn.getline(1)
    local pattern1, pattern2 = "^#!.*/bin/env%s+(%w+)", "^#!.*/bin/(%w+)"
    local interpreter = line:match(pattern1) or line:match(pattern2)
    if interpreter then
      vim.api.nvim_set_option_value("filetype", interpreter, { buf = 0 })
    end
  end,
})

-- Obj-c LSP
require('lspconfig').clangd.setup {
	filetypes = { 'c', 'cpp', 'objective-c', 'objc', 'objcpp' },
}
