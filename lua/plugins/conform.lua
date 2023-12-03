local conform_keymaps = {}

local M = {
	{
		"stevearc/conform.nvim",
		event = { "BufWinEnter" },
		keys = function()
			return conform_keymaps
		end,
	},
}

return M
