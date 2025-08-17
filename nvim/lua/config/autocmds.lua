local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Enable syntax detection from shebang lines
autocmd({ "Filetype" }, {
  group = augroup("CustomShebangDetection", {}),
  desc = "Set the filetype based on the shebang header",
  callback = function()
    local line = vim.fn.getline(1)
    local pattern1, pattern2 = "^#!.*/bin/env%s+(%w+)", "^#!.*/bin/(%w+)"
    local interpreter = line:match(pattern1) or line:match(pattern2)
    if interpreter then
      vim.api.nvim_set_option_value("filetype", interpreter, { buf = 0 })
    end
  end,
})


-- Specific ruby indentaion fix
vim.cmd([[autocmd FileType ruby setlocal indentkeys-=.]])
