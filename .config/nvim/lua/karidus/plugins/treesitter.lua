vim.pack.add({
	{src = "https://github.com/nvim-treesitter/nvim-treesitter"},
})

local treesitter = require("nvim-treesitter.configs")
treesitter.setup({
	ensure_installed = {
		"c",
		"cpp",
		"zig",
		"odin",
		"lua",
		"go",
		"css",
		"scss",
		"typescript",
		"javascript",
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,
	highlight = {
		enable = true,
	},
})

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.bosque = {
	install_info = {
		url = "~/projects/tree-sitter-bosque",
		files = {"src/parser.c"},
	},
	filetype = "bsq",
}
