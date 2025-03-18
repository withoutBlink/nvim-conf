local lsp_keymaps = require("plugins.lsp.keymaps")
local servers = require("plugins.lsp.servers")

local M = {
  {
    "neovim/nvim-lspconfig",
    keys = function()
      return lsp_keymaps
    end,
    opts = {
      servers = servers,
    },
  },
  {
    "williamboman/mason.nvim",
    enable = true,
    keys = function()
      return {}
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    enable = true,
    keys = function()
      return {}
    end,
  },
}

return M
