local clangd_config = require("plugins.lsp.servers.clangd")
local swift_config = require("plugins.lsp.servers.swift")
local gopls_config = require("plugins.lsp.servers.gopls")

local M = {
  clangd = clangd_config,
  gopls = gopls_config,
  sourcekit = swift_config,
  lua_ls = {},
  ts_ls = {},
  rust_analyzer = {},
}

return M
