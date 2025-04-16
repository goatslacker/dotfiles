return {
	"nvim-tree/nvim-tree.lua",
	cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	opts = require("config.nvim-tree"),
	keys = require("mappings.nvim-tree"),
	init = function()
		local OpenNvimTree = require("utils.nvim-tree").OpenNvimTree

		OpenNvimTree()
		-- Switches focus back to the main file
		vim.cmd("bnext")

		vim.api.nvim_create_autocmd({ "QuitPre" }, {
			callback = function()
				vim.cmd("NvimTreeClose")
			end,
		})
	end,
}
