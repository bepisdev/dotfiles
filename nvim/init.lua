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

-- Copy to system clipboard
vim.api.nvim_set_option("clipboard","unnamed")

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
  { import = "plugins.keymaps" },
})
