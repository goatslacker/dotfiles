return {
	-- formatters_by_ft = {
	--   python = { "black", "isort" },
	--   typescript = { "prettier" },
	--   javascript = { "prettier" },
	--   typescriptreact = { "prettier" },
	--   javascriptreact = { "prettier" },
	--   css = { "prettier" },
	--   elixir = { "mix" },
	--   rust = { "rustfmt" },
	-- },
	-- Map of filetype to formatters
	formatters_by_ft = {
		css = { "prettier" },
		go = { "gofmt" },
		html = { "prettier" },
		javascript = { "prettier" },
		javascriptreact = { "prettier" },
		json = { "prettier" },
		lua = { "stylua" },
		markdown = { "prettier" },
		python = { "ruff" },
		rust = { "rustfmt" },
		swift = { "swiftformat" },
		typescript = { "prettier" },
		typescriptreact = { "prettier" },
		["*"] = { "trim_whitespace" },
	},
	-- Set the log level. Use `:ConformInfo` to see the location of the log file.
	log_level = vim.log.levels.ERROR,
	-- Conform will notify you when a formatter errors
	notify_on_error = true,
	-- Conform will notify you when no formatters are available for the buffer
	notify_no_formatters = true,
}
