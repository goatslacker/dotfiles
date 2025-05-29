return {
	{
		"<leader>de",
		function()
			vim.diagnostic.open_float()
		end,
		desc = "Open diagnostic tooltip",
	},
	{
		"<leader>dh",
		function()
			vim.diagnostic.goto_prev()
		end,
		desc = "Show previous diagnostic",
	},
	{
		"<leader>dl",
		function()
			vim.diagnostic.goto_next()
		end,
		desc = "Show next diagnostic",
	},
	{
		"<leader>dq",
		function()
			vim.diagnostic.setloclist()
		end,
		desc = "Show all diagnostics in buffer",
	},
	{
		"<leader>lh",
		function()
			vim.lsp.buf.hover()
		end,
		desc = "Show type information on hover",
	},
	{
		"<leader>lr",
		function()
			local win = vim.api.nvim_get_current_win()
			local params = vim.lsp.util.make_position_params()
			params.context = { includeDeclaration = true }

			vim.lsp.buf_request(0, "textDocument/references", params, function(_, result)
				if not result or vim.tbl_isempty(result) then
					vim.notify("No references found")
					return
				end
				require("utils.lsp-config").show_locations_in_telescope(result)
			end)
		end,
		desc = "Show references (Telescope)",
	},
	{
		"<leader>li",
		function()
			vim.lsp.buf.implementation()
		end,
		desc = "Show implementation",
	},
	{
		"<leader>la",
		function()
			vim.lsp.buf.code_action()
		end,
		desc = "Menu of available code actions at your cursor position",
	},
	{
		"<leader>lR",
		function()
			vim.lsp.buf.rename()
		end,
		desc = "Renames all references",
	},
	{
		"<leader>l1",
		function()
			require("utils.lsp-config").handle_lsp_locations("textDocument/definition")
		end,
		desc = "Go to definition+",
	},
	{
		"<leader>l2",
		function()
			require("utils.lsp-config").handle_lsp_locations("textDocument/typeDefinition")
		end,
		desc = "Go to type definition+",
	},
}
