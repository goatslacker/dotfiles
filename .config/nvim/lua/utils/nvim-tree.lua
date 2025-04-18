local M = {}

M.OpenNvimTree = function()
	local api = require("nvim-tree.api")
	local current_file = vim.fn.expand("%:p")
	if current_file ~= "" then
		api.tree.open({
			path = vim.fn.expand("%:p:h"),
		})
	end
end

return M
