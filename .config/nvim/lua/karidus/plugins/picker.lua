vim.pack.add({
	{src = "https://github.com/nvim-telescope/telescope.nvim"},
	{src = "https://github.com/nvim-lua/plenary.nvim"}
})

local telescope = require "telescope"
telescope.setup({
	defaults  ={
		border = true,
		borderchars = { "─", "│", "─", "│", "┏", "┓", "┛", "┗" },
		layout_strategy = "center",
		layout_config = {
			center  = {
				anchor = "E",
				width = 0.7,
				mirror = true,
				preview_cuttof = 80,
			},
		},
		path_display = {
			shorten = 5,
			filename_first = true,
		},
	},
})
