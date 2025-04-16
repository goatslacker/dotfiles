return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "rafamadriz/friendly-snippets", "Kaiser-Yang/blink-cmp-avante" },
	version = "1.*",
	opts = require("config.blink"),
	opts_extend = { "sources.default" },
}
