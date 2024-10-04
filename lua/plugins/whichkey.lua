local wk_keymaps = {
	["<leader>"] = "Common",
	["<leader>u"] = "Unknown",
	["<leader>x"] = "Trouble",
	["<leader>g"] = "Git",
	["<leader>n"] = "Noice",
	["<leader>b"] = "Debug",
	["s"] = "Search",
	["sp"] = "Plugins",
}

local M = {
	{
		"folke/which-key.nvim",
		enabled = true,
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {},
		keys = function()
			return {}
		end,
		config = function(opts)
			local wk = require("which-key")
			wk.setup(opts)
			wk.register(wk_keymaps)
		end,
	},
}

return M
