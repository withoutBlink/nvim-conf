local wk_keymaps = {
	{ "<leader>", desc = "Common" },
	{ "<leader>g", desc = "Git" },
	{ "<leader>n", desc = "Noice" },
	{ "<leader>u", desc = "Unknown" },
	{ "<leader>x", desc = "Trouble" },
	{ "s", desc = "Search" },
	{ "sp", desc = "Plugins" },
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
			wk.add(wk_keymaps)
		end,
	},
}

return M
