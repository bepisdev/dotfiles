# NeoVim Config

My personal modular Neovim configuration

## Features

- **Lazy-loaded, modular plugin management** with [`lazy.nvim`](https://github.com/folke/lazy.nvim)
- **Modern UI:** Statusline via `lualine`, notifications via `nvim-notify`, file icons, and the `catppuccin` theme
- **Treesitter-powered highlighting and indentation**
- **LSP support** with autocompletion, code actions, renaming, diagnostics, and UI enhancements
- **Fuzzy finding** with Telescope
- **Git integration** with Fugitive and Gitsigns
- **Project management** and file explorer (`nvim-tree`)
- **Integrated terminal** with `toggleterm.nvim`
- **Dashboard** on startup
- **Extensive keybindings** with which-key popup support

## Installation

1. Clone this repo into your Neovim config directory:

    ```sh
    git clone https://github.com/bepisdev/nvim ~/.config/nvim
    ```

2. Launch Neovim. The config will auto-install [lazy.nvim](https://github.com/folke/lazy.nvim) and all plugins.

## Requirements

- Neovim 0.9+
- `git`
- (Recommended) [Nerd Font](https://www.nerdfonts.com/)

## Structure

- `init.lua`: Main entry point, plugin imports, and core options
- `lua/plugins/`: Modular plugin definitions and configurations
- `lua/plugins/keymaps.lua`: All key bindings and which-key groups

## Key Bindings

| Key Binding         | Description                  |
|---------------------|-----------------------------|
| `<leader>f`         | **Find** (Telescope group)  |
| `<leader>ff`        | Find files                  |
| `<leader>fg`        | Live grep                   |
| `<leader>fb`        | List buffers                |
| `<leader>fh`        | Help tags                   |
| `<leader>fr`        | Recent files                |
| `<leader>l`         | **LSP** (Language Server)   |
| `<leader>li`        | LSP info                    |
| `<leader>lr`        | Rename symbol               |
| `<leader>la`        | Code action                 |
| `<leader>ld`        | Go to definition            |
| `<leader>lD`        | Go to declaration           |
| `<leader>lf`        | Format buffer               |
| `<leader>g`         | **Git** operations          |
| `<leader>gs`        | Git status                  |
| `<leader>gc`        | Git commit                  |
| `<leader>gp`        | Git push                    |
| `<leader>gl`        | Git pull                    |
| `<leader>gb`        | Git blame                   |
| `<leader>gd`        | Git diff split              |
| `<leader>t`         | **Toggle** group            |
| `<leader>te`        | Toggle file explorer        |
| `<leader>tt`        | **Terminal** group          |
| `<leader>tth`       | Horizontal terminal         |
| `<leader>ttv`       | Vertical terminal           |
| `<leader>p`         | **Project** group           |
| `<leader>p`         | Switch project (Telescope)  |

> **Tip:** `<leader>` is set to the spacebar (`Space`).

## Core Plugins

- **UI:** `catppuccin`, `lualine`, `nvim-web-devicons`, `nvim-notify`, `indent-blankline`
- **Navigation:** `telescope.nvim`, `nvim-tree.lua`, `project.nvim`
- **LSP:** `nvim-lspconfig`, `mason.nvim`, `lspsaga.nvim`, `fidget.nvim`
- **Completion:** `nvim-cmp`, `LuaSnip`, `copilot-cmp` (optional)
- **Editing:** `vim-commentary`, `nvim-autopairs`, `better-escape.nvim`
- **Git:** `vim-fugitive`, `gitsigns.nvim`
- **Terminal:** `toggleterm.nvim`
- **Dashboard:** `alpha-nvim`

## Customization

Edit/extend plugins and keymaps by modifying the files in `lua/plugins/`. Key bindings are defined in `lua/plugins/keymaps.lua`.

## Screenshots

> _Add your screenshots here!_

---

Feel free to fork and adapt for your own workflow.
