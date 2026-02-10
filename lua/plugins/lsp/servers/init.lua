local clangd_config = require("plugins.lsp.servers.clangd")
local gopls_config = require("plugins.lsp.servers.gopls")
local tsls_config = require("plugins.lsp.servers.tsls")
local als_config = require("plugins.lsp.servers.als")
local swift_config = require("plugins.lsp.servers.swift")
local rust_config = require("plugins.lsp.servers.rust")


local M = {
  clangd = clangd_config,
  sourcekit = swift_config,
  rust_analyzer = rust_config,
  gopls = gopls_config,
  arduino_language_server = als_config,
  ts_ls = tsls_config,
  lua_ls = {},
}

return M
