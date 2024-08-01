local M = {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = function()
			return {
				{
					"<leader>d",
					"<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
					desc = "Document Diag",
					nowait = true,
				},
				{
					"<leader>D",
					"<cmd>Trouble diagnostics toggle<cr>",
					desc = "Project Diag",
					nowait = true,
				},
				{
					"<leader>t",
					"<cmd>Trouble symbols toggle focus=true win.size=45<cr>",
					desc = "Symbols (Trouble)",
				},
			}
		end,
	},
}

return M
