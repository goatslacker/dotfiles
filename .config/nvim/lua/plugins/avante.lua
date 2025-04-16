return {
	"yetone/avante.nvim",
	event = "VeryLazy",
	version = false,
	opts = {
		provider = "claude",
		claude = {
			endpoint = "https://api.anthropic.com",
			model = "claude-3-7-sonnet-20250219",
			temperature = 0.7,
			max_tokens = 4096,
		},
	},
	build = "make",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		-- optional deps
		"nvim-tree/nvim-web-devicons",
		"nvim-telescope/telescope.nvim",
		-- "echasnovski/mini.pick", -- for file_selector provider mini.pick
		-- "ibhagwan/fzf-lua", -- for file_selector provider fzf
		-- TODO: markview renders nicer, does that have avante support?
		-- {
		-- 	-- Make sure to set this up properly if you have lazy=true
		-- 	"MeanderingProgrammer/render-markdown.nvim",
		-- 	opts = {
		-- 		file_types = { "markdown", "Avante" },
		-- 	},
		-- 	ft = { "markdown", "Avante" },
		-- },
	},
	keys = require("mappings.avante"),
}
