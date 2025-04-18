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
		vim.api.nvim_create_autocmd({ "QuitPre" }, {
			callback = function()
				vim.cmd("NvimTreeClose")
			end,
		})
	end,
}
