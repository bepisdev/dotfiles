-- Treesitter config

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    opts = {
      ensure_installed = "all",
      ignore_install = { "ipkg" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  }
}
