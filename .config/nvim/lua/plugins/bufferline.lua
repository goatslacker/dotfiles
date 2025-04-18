return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	event = "BufReadPre",
	config = function()
		require("bufferline").setup(require("config.bufferline"))
	end,
	keys = require("mappings.bufferline"),
}
