local clangd_config = require("plugins.lsp.servers.clangd")

local M = {
  clangd = clangd_config,
  lua_ls = {},
}

return M
