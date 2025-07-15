-- Project management and file explorer

return {
  -- project.nvim for project root detection & switching
  { "ahmedkhalf/project.nvim",
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
}
