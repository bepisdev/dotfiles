return {
  "arnaupv/nvim-devcontainer-cli",
  opts = {
    -- By default, if no extra config is added, following nvim_dotfiles are
    -- installed: "https://github.com/LazyVim/starter"
    -- This is an example for configuring other nvim_dotfiles inside the docker container
    nvim_dotfiles_repo = "https://github.com/bepisdev/dotfiles.git",
    nvim_dotfiles_install_command = "cp -r ~/nvim_dotfiles/nvim ~/.config/nvim",
  },
  keys = {
    -- stylua: ignore
    {
      "<leader>cD",
      nil,
      desc = "DevContainers",
    },
    {
      "<leader>cDu",
      "<cmd>DevcontainerUp<cr>",
      desc = "Up the DevContainer",
    },
    {
      "<leader>cDc",
      "<cmd>DevcontainerConnect<cr>",
      desc = "Connect to DevContainer",
    },
  },
}
