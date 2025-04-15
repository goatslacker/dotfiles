return {
	{
		"<leader>t",
		function()
			local api = require("nvim-tree.api")
			local current_file = vim.fn.expand("%:p")
			if current_file == "" then
				api.tree.toggle()
			else
				api.tree.open({
					path = vim.fn.expand("%:p:h"),
				})
			end
		end,
		desc = "Toggle NvimTree in the current file's directory",
	},
}
