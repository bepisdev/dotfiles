-- Shell Scripting LSP (Bash, Zsh)
require("lspconfig").bashls.setup({
    filetypes = { "sh", "bash", "zsh" },
})

-- Lua LSP
require('lspconfig').lua_ls.setup({
    settings = {
        Lua = {
            diagnostics = { globals = { 'vim' } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
        },
    },
})

-- C and Relatives LSP (C/C++/Objective-C/Swift)
require('lspconfig').clangd.setup {
	filetypes = { 'c', 'cpp', 'objective-c', 'objc', 'objcpp', 'swift' },
}
