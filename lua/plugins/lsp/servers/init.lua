local clangd_config = require("plugins.lsp.servers.clangd")
local gopls_config = require("plugins.lsp.servers.gopls")
local tsls_config = require("plugins.lsp.servers.tsls")
local als_config = require("plugins.lsp.servers.als");


local M = {
  clangd = clangd_config,
  gopls = gopls_config,
  arduino_language_server = als_config,
  ts_ls = tsls_config,
  lua_ls = {},
  rust_analyzer = {},
}

return M
