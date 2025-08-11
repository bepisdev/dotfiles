vim.cmd("colorscheme ryuuko")

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

-- Load plugins
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
