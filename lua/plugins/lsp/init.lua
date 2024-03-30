local lspconfig = require("lspconfig")

local lsp_keymaps = require("plugins.lsp.keymaps")
local servers = require("plugins.lsp.servers")

local M = {
	{
		"neovim/nvim-lspconfig",
		keys = lsp_keymaps,
		opts = {
			servers = servers;
		}
	},
	{
		"williamboman/mason.nvim",
		enable = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		enable = true,
	},
}

return M
