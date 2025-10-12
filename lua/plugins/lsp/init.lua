local lsp_keymaps = require("plugins.lsp.keymaps")

local M = {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "mason-org/mason.nvim",
      "mason-org/mason-lspconfig.nvim"
    },
    keys = lsp_keymaps,
    opts = {},
    config = function(_, opts)
      local servers = require("plugins.lsp.servers")
      local function setup(server, server_opts)
        if server_opts.enabled == false then
          return
        end
        vim.lsp.enable(server)
        vim.lsp.config(server, server_opts)
      end

      for server, server_opts in pairs(servers) do
        setup(server, server_opts)
      end

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then
            return
          end
          vim.print("LSP Client Attached")
        end
      })
    end,
    lazy = false,
  },
  {
    "mason-org/mason.nvim",
    version = "^1.0.0",
    keys = function()
      return {}
    end,
    cmd = "Mason",
    build = ":MasonUpdate",
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "shfmt",
      },
    },
    config = function(_, opts)
      require("mason").setup(opts)
      local mr = require("mason-registry")
      mr:on("package:install:success", function()
        vim.defer_fn(function()
          require("lazy.core.handler.event").trigger({
            event = "FileType",
            buf = vim.api.nvim_get_current_buf(),
          })
        end, 100)
      end)

      mr.refresh(function()
        for _, tool in ipairs(opts.ensure_installed) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end)
    end,
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
