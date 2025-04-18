local M = {}

M.OpenNvimTree = function()
	local api = require("nvim-tree.api")
	local current_file = vim.fn.expand("%:p")
	if current_file ~= "" then
		api.tree.open({
			path = vim.fn.expand("%:p:h"),
		})

		-- Switches focus back to the main file
		vim.cmd("bnext")
	end
end

return M
