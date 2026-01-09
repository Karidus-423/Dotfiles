-- vim.keymap.set | Expects a function or string. Not a function itself.
local SetKeymap = vim.keymap.set

vim.g.mapleader = " "

--Movement------------------------------------------------------------------------------------------
SetKeymap("n", "<leader>pv", vim.cmd.Ex, {
	desc = "Go to explore page.",
})
SetKeymap("v", "J", ":m '>+1<CR>gv=gv", {
	desc = "Move Selection Down",
})
SetKeymap("v", "K", ":m '<-2<CR>gv=gv", {
	desc = "Move Selection Up",
})
SetKeymap({ "n", "v" }, "<C-d>", "<C-d>zz", {
	desc = "Move halfway down.",
})
SetKeymap({ "n", "v" }, "<C-s>", "<C-u>zz", {
	desc = "Move halfway up.",
})

--Telescope-----------------------------------------------------------------------------------------
SetKeymap('n', '<leader>ff', ':Telescope find_files<CR>', {
	desc = "List dir files.",
})
SetKeymap('n', '<leader>lg', ':Telescope live_grep<CR>', {
	desc = "Grep live query.",
})
SetKeymap('n', '<leader>gs',
	function()
		require('telescope.builtin').grep_string()
	end,
	{ desc = "Grep search string under cursor.", }
)
SetKeymap('n', '<leader>fb', ':Telescope buffers<CR>',{
	desc = "List open buffers."
})

--Marks Traversal-----------------------------------------------------------------------------------
SetKeymap("n", "<C-U>", "'U")
SetKeymap("n", "<C-I>", "'I")
SetKeymap("n", "<C-O>", "'O")
SetKeymap("n", "<C-J>", "'J")
SetKeymap("n", "<C-K>", "'K")
SetKeymap("n", "<C-L>", "'L")

SetKeymap("n", "<leader>u", "mU")
SetKeymap("n", "<leader>i", "mI")
SetKeymap("n", "<leader>o", "mO")
SetKeymap("n", "<leader>j", "mJ")
SetKeymap("n", "<leader>k", "mK")
SetKeymap("n", "<leader>l", "mL")
SetKeymap("n", "<leader>dm", ":delm A-Z0-9<CR>")


--Utils---------------------------------------------------------------------------------------------
SetKeymap({ "n", "v" }, "<leader>y", [["+y]])
SetKeymap({ "n", "v" }, "<leader>Y", [["+Y]])
SetKeymap({ "n", "v" }, "<A-v>", "<C-v>", {
	desc = "Paste Selection",
})
SetKeymap('n', '<leader>mm', ':Man <CR>', {
	desc = "Open man under cursor.", silent = true, noremap = true,
})
SetKeymap('n', '<leader>cp', 
function()
	path = vim.fn.expand("%:p")
	vim.fn.setreg("+", path)
	print("File Path Copied!")
end,
{desc = "Copy full file path."})

SetKeymap('n', '<leader>cn', 
function()
	name = vim.fn.expand("%:t")
	vim.fn.setreg("+", name)
	print("File Name Copied!")
end,
{desc = "Copy filename"})
