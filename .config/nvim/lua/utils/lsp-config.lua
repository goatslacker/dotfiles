local M = {}

M.show_unique_locations_with_fallback = function(method)
	local win = vim.api.nvim_get_current_win()
	local params = vim.lsp.util.make_position_params(win, "utf-8")
	vim.lsp.buf_request(0, method, params, function(_, result)
		if not result or vim.tbl_isempty(result) then
			return
		end

		-- Normalize to list
		if not vim.islist(result) then
			result = { result }
		end

		-- De-duplicate by uri + range
		local seen = {}
		local unique = {}

		for _, loc in ipairs(result) do
			local uri = loc.uri or loc.targetUri
			local range = loc.range or loc.targetSelectionRange
			local key = string.format("%s:%d:%d", uri, range.start.line, range.start.character)

			if not seen[key] then
				seen[key] = true
				table.insert(unique, loc)
			end
		end

		if #unique == 1 then
			vim.lsp.util.show_document(unique[1], "utf-8")
		else
			local pickers = require("telescope.pickers")
			local finders = require("telescope.finders")
			local conf = require("telescope.config").values
			local entry_display = require("telescope.pickers.entry_display")

			local displayer = entry_display.create({
				separator = " ",
				items = {
					{ width = 40 },
					{ remaining = true },
				},
			})

			local function make_display(entry)
				return displayer({
					entry.filename,
					string.format("L%d:C%d", entry.lnum, entry.col),
				})
			end

			local entries = vim.tbl_map(function(loc)
				local uri = loc.uri or loc.targetUri
				local range = loc.range or loc.targetSelectionRange
				local fname = vim.uri_to_fname(uri)
				local bufnr = vim.fn.bufnr(fname, true)

				return {
					value = loc,
					ordinal = fname,
					display = make_display,
					filename = fname,
					lnum = range.start.line + 1,
					col = range.start.character + 1,
				}
			end, unique)

			pickers
				.new({}, {
					prompt_title = "LSP Locations",
					finder = finders.new_table({
						results = entries,
						entry_maker = function(entry)
							return entry
						end,
					}),
					sorter = conf.generic_sorter({}),
					previewer = conf.qflist_previewer({}),
					attach_mappings = function(_, map)
						local actions = require("telescope.actions")
						local action_state = require("telescope.actions.state")

						actions.select_default:replace(function(prompt_bufnr)
							actions.close(prompt_bufnr)
							local selection = action_state.get_selected_entry()
							vim.lsp.util.show_document(selection.value, "utf-8")
						end)
						return true
					end,
				})
				:find()
		end
	end)
end

return M
