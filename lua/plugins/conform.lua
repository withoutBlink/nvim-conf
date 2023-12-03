local conform_keymaps = {
	{
		"F",
		function()
			require("conform").format({
				lsp_fallback = true,
			})
		end,
		mode = { "n", "v" },
		desc = "Format",
	},
}

local M = {
	{
		"stevearc/conform.nvim",
		keys = function()
			return conform_keymaps
		end,
	},
}

return M
