local clangd_config = require("plugins.lsp.servers.clangd")

local M = {
	clangd = clangd_config,
	pyright = {},
	lua_ls = {},
    shfmt = {},
    stylua = {},
}

return M
