local lspconfig = require("lspconfig")

local M = {
	-- Use native clangd, not the one from mason
	-- which is not reliable, maybe consider to remove it
	mason = false;
}

return M