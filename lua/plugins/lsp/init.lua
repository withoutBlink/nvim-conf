local lspconfig = require("lspconfig")

local lsp_keymaps = require("plugins.lsp.gkeymaps")
local servers = require("plugins.lsp.servers")

local M = {
	{
		"neovim/nvim-lspconfig",
		config = function()
		end
	},

	{
		"williamboman/mason.nvim",
		enable = false,
		keys = function()
			return {}
		end,
	},
}

return M
