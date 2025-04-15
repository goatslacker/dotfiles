return {
	"rebelot/kanagawa.nvim",
	priority = 1000,
	opts = function()
		require("config.kanagawa")
	end,
	init = function()
		vim.cmd("colorscheme kanagawa")
	end,
}
