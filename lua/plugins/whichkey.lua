local wk_keymaps = {
	["<leader>K"] = "Key Word",
	["<leader>b"] = "Buffer Line",
	["<leader>s"] = "Search",
	["<leader>sn"] = "Noice",
	["<leader>p"] = "Plugins",
	["<leader>u"] = "Unknown",
	["<leader>x"] = "Trouble",
	["<leader>g"] = { name = "+Git" },
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
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		},
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
