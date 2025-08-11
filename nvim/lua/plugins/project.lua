-- Project management and file explorer

return {
  -- project.nvim for project root detection & switching
  { "DrKJeff16/project.nvim",
		lazy = false,
		config = function()
			require("project_nvim").setup {
				  show_hidden = true
			}
		end,
	},

  -- nvim-tree for file explorer
  { 
		"nvim-tree/nvim-tree.lua",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = true
	},

	-- Remote file editing
	{
    'chipsenkbeil/distant.nvim',
    branch = 'v0.3',
    config = function()
        require('distant'):setup()
    end
	}
}
