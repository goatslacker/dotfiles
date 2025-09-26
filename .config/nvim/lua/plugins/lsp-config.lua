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
				"basedpyright",
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

    vim.lsp.enable('basedpyright')

    vim.lsp.enable('ts_ls')

    vim.lsp.enable('cssls')

    vim.lsp.config('elixirls', {
			cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/elixir-ls") },
    })

    vim.lsp.config('rust_analyzer', {
      settings = {
        ['rust-analyzer'] = {
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
	keys = require("mappings.lsp-config"),
}
