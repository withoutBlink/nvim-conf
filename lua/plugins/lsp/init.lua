local lsp_keymaps = require("plugins.lsp.keymaps")
local servers = require("plugins.lsp.servers")

local M = {
	{
		"neovim/nvim-lspconfig",
		depends = "nvim-telescope/telescope.nvim",
		keys = lsp_keymaps,
		opts = {
			servers = servers;
		},
		init = function()
			--disable default keys here
			local default_keys = require("lazyvim.plugins.lsp.keymaps").get()
			default_keys[#default_keys + 1] = { "<leader>ca", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cA", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cl", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cr", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cR", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cc", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cC", mode = { "n", "v" }, false }
		end,
	},
	{
		"williamboman/mason.nvim",
		enable = true,
		keys = function ()
			return {}
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		enable = true,
	},
}

return M
