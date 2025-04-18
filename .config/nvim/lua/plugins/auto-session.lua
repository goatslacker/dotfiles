return {
	"rmagatti/auto-session",
	lazy = false,
	config = function()
		require("auto-session").setup(require("config.auto-session"))
	end,
	keys = require("mappings.auto-session"),
}
