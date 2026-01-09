vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.autoread = true

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.winborder = '┎,─,┒,┃,┚,─,┖,┃'
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.virtualedit = "block"
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.colorcolumn = "100"
vim.opt.expandtab = false -- Use tabs instead of spaces
vim.opt.guicursor = "n-c-sm:block,i-ci-:ver25,r-cr-o:hor20,v-ve:hor75"
vim.opt.cmdheight = 1
vim.g.netrw_banner = 1
vim.g.autoformat = false
vim.cmd { cmd = 'colorscheme', args = { 'low-tide' } }

vim.api.nvim_set_hl(0, "Normal",
	{ background = "None" })
vim.api.nvim_set_hl(0, "NormalNC",
	{ background = "None" })

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	pattern = "*.bsq",
	callback = function()
		vim.bo.filetype = "bsq" -- assign a filetype (optional but useful)
		-- vim.lsp.start({
		-- 	name = 'bsqls',
		-- 	cmd = { '/home/karidus/projects/bsqls/main' },
		-- 	root_dir = vim.fs.root(0, { ".bsq" }) or vim.fn.getcwd()
		-- })
	end
})
