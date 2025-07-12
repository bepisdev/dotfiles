-- UI tweaks, themes, fonts, statusline

return {
  -- Colorscheme(s)
  { "catppuccin/nvim", name = "catppuccin", priority = 1000, config = function() vim.cmd.colorscheme("catppuccin") end },

  -- Statusline
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, config = true },

  -- Indent guides
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },

  -- Better notifications
  { "rcarriga/nvim-notify", config = true },

  -- UI components
  { "MunifTanjim/nui.nvim" },

  -- File icons
  { "nvim-tree/nvim-web-devicons", lazy = true },
}
