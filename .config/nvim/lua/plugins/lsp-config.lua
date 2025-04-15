return {
  "neovim/nvim-lspconfig",
  lazy = false,
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				-- Python
				"pyright",
				-- TypeScript/JavaScript
				"ts_ls",
				-- CSS
				"cssls",
				-- Elixir
				"elixirls",
				-- Rust
				"rust_analyzer",
			},
			automatic_installation = true,
		})

		local lspconfig = require("lspconfig")

		-- Python
		lspconfig.pyright.setup({
			capabilities = capabilities,
		})

		-- TypeScript/JavaScript
		lspconfig.ts_ls.setup({
			capabilities = capabilities,
		})

		-- CSS
		lspconfig.cssls.setup({
			capabilities = capabilities,
		})

		-- Elixir
		lspconfig.elixirls.setup({
			capabilities = capabilities,
			cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/elixir-ls") },
		})

		-- Rust
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
			settings = {
				["rust-analyzer"] = {
					cargo = {
						allFeatures = true,
					},
					checkOnSave = {
						command = "clippy",
					},
				},
			},
		})
  end,
  keys = require("mappings.lsp-config")
}
