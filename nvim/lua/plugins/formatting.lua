return {
  -- Formatter
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        python = { "black" },
        javascript = { "prettier" },
        typescript = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        go = { "gofmt" },
      },
    },
  },

  -- Linter
  {
    "mfussenegger/nvim-lint",
    config = function()
      require('lint').linters_by_ft = {
        python = {'flake8'},
        javascript = {'eslint'},
        typescript = {'eslint'},
      }
    end,
  },
}
