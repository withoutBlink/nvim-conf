local M = {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>d",
			function()
				require("trouble").toggle("document_diagnostics")
			end,
			desc = "Doc Diag",
			nowait = true,
		},
		{
			"<leader>D",
			function()
				require("trouble").toggle("workspace_diagnostics")
			end,
			desc = "Space Diag",
			nowait = true,
		},
	},
}

return M
