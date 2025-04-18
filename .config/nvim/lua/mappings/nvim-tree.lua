return {
	{
		"<leader>tt",
		function()
			local OpenNvimTree = require("utils.nvim-tree").OpenNvimTree
			OpenNvimTree()
		end,
		desc = "NvimTree Open at Filepath",
	},
	{
		"<leader>tc",
		"<cmd>NvimTreeClose<cr>",
		desc = "NvimTree Close",
	},
}
