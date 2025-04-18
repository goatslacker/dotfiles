return {
	"rmagatti/auto-session",
	lazy = false,
	config = function()
		require("auto-session").setup(require("config.auto-session"))
	end,
	keys = require("mappings.auto-session"),
	init = function()
		-- https://github.com/rmagatti/auto-session/issues/426
		local function only_blank_buffer_left()
			local bufs = vim.api.nvim_list_bufs()
			local count = 0
			for _, bufnr in ipairs(bufs) do
				-- Only consider listed buffers
				if vim.fn.buflisted(bufnr) == 1 then
					local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
					local is_empty = #lines <= 1 and (lines[1] == nil or lines[1] == "")
					local is_modified = vim.api.nvim_buf_get_option(bufnr, "modified")
					local has_name = vim.api.nvim_buf_get_name(bufnr) ~= ""

					-- If buffer has a name, is modified, or has content, it's meaningful
					if has_name or is_modified or not is_empty then
						count = count + 1
					end
				end
			end
			return count == 0
		end

		vim.api.nvim_create_autocmd("VimLeavePre", {
			callback = function()
				if only_blank_buffer_left() then
					vim.cmd("SessionDelete")
				else
				end
			end,
		})
	end,
}
