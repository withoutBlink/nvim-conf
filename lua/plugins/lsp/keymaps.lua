local M = {
  {
    "gd",
    function()
      require("fzf-lua").lsp_definitions()
    end,
    desc = "Goto Definition",
  },
  {
    "gD",
    function()
      require("fzf-lua").lsp_declarations()
    end,
    desc = "Goto Declaration",
  },
  {
    "gK",
    vim.lsp.buf.signature_help,
    desc = "Signature Help",
  },
  {
    "gh",
    "<cmd>LspClangdSwitchSourceHeader<cr>",
    desc = "Switch Header/Source",
  },
  {
    "K",
    vim.lsp.buf.hover,
    desc = "Hover",
  },
  {
    "grh",
    function()
      local enabled = vim.lsp.inlay_hint.is_enabled()
      vim.lsp.inlay_hint.enable(not enabled)
    end,
    desc = "Toggle inlay hints"
  }
}

return M
