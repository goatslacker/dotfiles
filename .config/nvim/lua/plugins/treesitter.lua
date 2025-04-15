return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	opts = function()
		return require("config.treesitter")
	end,
}
