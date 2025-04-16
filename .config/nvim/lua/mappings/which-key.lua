return {
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
}
