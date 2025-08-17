-- Core Vim options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Indentation Settings
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- UI Settings
vim.wo.number = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.api.nvim_set_option("clipboard", "unnamed")

