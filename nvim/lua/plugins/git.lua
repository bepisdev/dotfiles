-- Git integration

return {
  -- Git signs in gutter
  { "lewis6991/gitsigns.nvim", config = true },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
        { "<leader>gl", "<cmd>LazyGitCurrentFile<cr>", desc = "LazyGit" },
    }
  },
}
