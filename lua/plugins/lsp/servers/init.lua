local clangd_config = require("plugins.lsp.servers.clangd")
local gopls_config = require("plugins.lsp.servers.gopls")

local M = {
  clangd = clangd_config,
  gopls = gopls_config,
  lua_ls = {},
  ts_ls = {},
  rust_analyzer = {},
}

return M
