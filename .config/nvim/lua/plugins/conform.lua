return {
	"stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  config = function()
    require("conform").setup(require("config.conform"))
  end,
  keys = require("mappings.conform")
}
