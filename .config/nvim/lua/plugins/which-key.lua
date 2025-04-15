return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
		spec = {
			{ "<leader>a", group = "Avante" },
			{ "<leader>b", group = "Buffers" },
			{ "<leader>c", group = "Claude" },
			{ "<leader>d", group = "Diagnostics" },
			{ "<leader>f", group = "Telescope" },
			{ "<leader>g", group = "Git" },
			{ "<leader>h", group = "Hop" },
			{ "<leader>l", group = "LSP Tools" },
		},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
		{
			"<localleader>c",
			"<cmd>nohlsearch<CR>",
			desc = "Clear highlight search",
		},
		{
			"<leader>bl",
			"<cmd>bnext<CR>",
			desc = "Next buffer",
		},
		{
			"<leader>bh",
			"<cmd>bprevious<CR>",
			desc = "Previous buffer",
		},
		{
			"<leader>bx",
			"<cmd>bdelete<CR>",
			desc = "Close buffer",
		},
	},
}
