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
    desc = "Show all diagnostics in buffer"
  },
  {
    "<leader>ld",
    function()
      vim.lsp.buf.type_definition()
    end,
    desc = "Go to type definition"
  },
  {
    "<leader>lh",
    function()
      vim.lsp.buf.hover()
    end,
    desc = "Show type information on hover"
  },
  {
    "<leader>lr",
    function()
      vim.lsp.buf.references()
    end,
    desc = "Show references"
  },
  {
    "<leader>li",
    function()
      vim.lsp.buf.implementation()
    end,
    desc = "Show usage"
  },
  {
    "<leader>la",
    function()
      vim.lsp.buf.code_action()
    end,
    desc = "Menu of available code actions at your cursor position"
  },
  {
    "<leader>lR",
    function()
      vim.lsp.buf.rename()
    end,
    desc = "Renames all references"
  },
}
