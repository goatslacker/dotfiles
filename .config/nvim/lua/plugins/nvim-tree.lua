return {
	"nvim-tree/nvim-tree.lua",
  cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
	event = "VeryLazy",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
  opts = function()
    require("config.nvim-tree")
  end,
	keys = function()
		return require("mappings.nvim-tree")
	end,
}
