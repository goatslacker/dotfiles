return {
  {
    "<leader>F",
    function()
      require("conform").format({ async = true, lsp_fallback = true })
    end,
    mode = "n",
    desc = "Format buffer",
  },
}
