local lsp_handle = require("plugins.lsp.handle")

local M = {
	{
		"neovim/nvim-lspconfig",
		config = lsp_handle.config,
	},
	{
		"williamboman/mason.nvim",
		keys = function()
			return {}
		end,
	},
}

return M
