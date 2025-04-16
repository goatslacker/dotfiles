local wo = vim.wo
local o = vim.o

-- Remove trailing whitespace on save
vim.cmd([[
  autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
]])

vim.opt.mouse = a
vim.opt.termguicolors = true

wo.relativenumber = true

-- Spaces > Tabs
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2

-- Indenting
o.autoindent = true
o.smartindent = true

-- Wrap
o.wrap = true

-- Search
o.incsearch = true
o.hlsearch = true

-- Always show 5 lines on screen
o.so = 5
