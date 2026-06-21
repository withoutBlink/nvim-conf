
local M = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim"
    },
    keys = function()
      local lsp_keymaps = require("plugins.lsp.keymaps")
      return lsp_keymaps
    end,
    opts = {},
    config = function()
      local servers = require("plugins.lsp.servers")
      local function setup(server, server_opts)
        if server_opts.enabled == false then
          return
        end
        vim.lsp.enable(server)
        vim.lsp.config(server, server_opts)
      end

      for server, server_opts in pairs(servers) do setup(server, server_opts)
      end
    end,
    lazy = false,
  },
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    keys = function()
      return {}
    end,
    opts = {},
  },
  {
    "mason-org/mason-lspconfig.nvim",
    version = "^1.0.0",
    config = function ()
    end,
    keys = function()
      return {}
    end,
  },
}

return M
