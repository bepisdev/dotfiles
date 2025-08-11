-- Core Vim options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Indentation Settings
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true

-- UI Settings
vim.wo.number = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.api.nvim_set_option("clipboard", "unnamed")
