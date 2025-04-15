vim.g.colors_name = "mango"
vim.o.termguicolors = true

local colors = {
	black = "#585858",
	orange = "#ffaf00",
	peach = "#ffd787",
	red = "#ff5f5f",
	green = "#87af5f",
	gray = "#bcbcbc",
	blue = "#5fafdf",
	pink = "#ff5faf",
	purple = "#af87ff",
	silver = "#8a8a8a",
	white = "#eeeeee",
}

local c = colors

local syntax = {
  Boolean = { fg = c.red },
  Character = { fg = c.green },
  Conditional = { fg = c.peach },
  Constant = { fg = c.purple },
  Define = { fg = c.purple, sp = "none" },
  Delimiter = { fg = c.white },
  Float = { fg = c.blue },
  Function = { fg = c.white },
  Identifier = { fg = c.white, sp = "none" },
  Include = { fg = c.purple },
  Keyword = { fg = c.peach },
  Label = { fg = c.peach },
  Number = { fg = c.blue },
  Operator = { fg = c.peach, sp = "none" },
  PreProc = { fg = c.purple },
  Repeat = { fg = c.peach },
  Special = { fg = c.pink },
  SpecialChar = { fg = c.pink },
  Statement = { fg = c.peach },
  StorageClass = { fg = c.orange },
  String = { fg = c.green },
  Structure = { fg = c.orange },
  Tag = { fg = c.white },
  Todo = { fg = c.black, bg = c.yellow },
  Type = { fg = c.orange, sp = "none" },
  Typedef = { fg = c.orange },
  Variable = { fg = c.white },
}

local treesitter = {
	["@variable"] = { fg = c.white },
	["@variable.builtin"] = { fg = c.white },
	["@variable.parameter"] = { fg = c.white },
	["@variable.member"] = { fg = c.white },
	["@variable.member.key"] = { fg = c.white },

	["@module"] = { fg = c.white },
	-- ["@module.builtin"] = { fg = c.white },

	["@constant"] = { fg = c.purple },
	["@constant.builtin"] = { fg = c.purple },
	["@constant.macro"] = { fg = c.purple },

	["@string"] = { fg = c.green },
	["@string.regex"] = { fg = c.green },
	["@string.escape"] = { fg = c.green },
	["@character"] = { fg = c.blue },
	-- ["@character.special"] = { fg = c.white },
	["@number"] = { fg = c.blue },
	["@number.float"] = { fg = c.blue },

	["@annotation"] = { fg = c.white },
	["@attribute"] = { fg = c.white },
	["@error"] = { fg = c.white, bg = c.red },

	["@keyword.exception"] = { fg = c.white },
	["@keyword"] = { fg = c.white },
	["@keyword.function"] = { fg = c.white },
	["@keyword.return"] = { fg = c.orange },
	["@keyword.operator"] = { fg = c.white },
	["@keyword.import"] = { link = "Include" },
	["@keyword.conditional"] = { fg = c.peach },
	["@keyword.conditional.ternary"] = { fg = c.peach },
	["@keyword.repeat"] = { fg = c.white },
	["@keyword.storage"] = { fg = c.orange },
	["@keyword.directive.define"] = { fg = c.white },
	["@keyword.directive"] = { fg = c.white },

	["@function"] = { fg = c.white },
	["@function.builtin"] = { fg = c.white },
	["@function.macro"] = { fg = c.white },
	["@function.call"] = { fg = c.white },
	["@function.method"] = { fg = c.white },
	["@function.method.call"] = { fg = c.white },
	["@constructor"] = { fg = c.white0C },

	["@operator"] = { fg = c.white },
	["@reference"] = { fg = c.white },
	["@punctuation.bracket"] = { fg = c.white },
	["@punctuation.delimiter"] = { fg = c.white },
	["@symbol"] = { fg = c.white0B },
	["@tag"] = { fg = c.white },
	["@tag.attribute"] = { fg = c.white },
	["@tag.delimiter"] = { fg = c.white },
	["@text"] = { fg = c.white },
	["@text.emphasis"] = { fg = c.white },
	["@text.strike"] = { fg = c.white, strikethrough = true },
	["@type.builtin"] = { fg = c.white },
	["@definition"] = { sp = c.white, underline = true },
	["@scope"] = { bold = true },
	["@property"] = { fg = c.white },

	-- markup
	["@markup.heading"] = { fg = c.white },
	["@markup.raw"] = { fg = c.white },
	["@markup.link"] = { fg = c.white },
	["@markup.link.url"] = { fg = c.white, underline = true },
	["@markup.link.label"] = { fg = c.white0C },
	["@markup.list"] = { fg = c.white },
	["@markup.strong"] = { bold = true },
	["@markup.underline"] = { underline = true },
	["@markup.italic"] = { italic = true },
	["@markup.strikethrough"] = { strikethrough = true },

	["@comment"] = { fg = c.gray },
	["@comment.todo"] = { fg = c.gray, bg = c.yellow },
	["@comment.warning"] = { fg = c.white, bg = c.yellow },
	["@comment.note"] = { fg = c.black, bg = c.white },
	["@comment.danger"] = { fg = c.black, bg = c.red },

	["@diff.plus"] = { fg = c.green },
	["@diff.minus"] = { fg = c.red },
	["@diff.delta"] = { fg = c.gray },
}

vim.cmd("hi clear")

for hl, spec in pairs(syntax) do
  vim.api.nvim_set_hl(0, hl, spec)
end

for hl, spec in pairs(treesitter) do
  vim.api.nvim_set_hl(0, hl, spec)
end
