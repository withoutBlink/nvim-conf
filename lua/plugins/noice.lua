local M = {
	{
		"folke/noice.nvim",
		enabled = false,
		keys = function()
			return {
				{
					"<S-Enter>",
					function()
						require("noice").redirect(vim.fn.getcmdline())
					end,
					mode = "c",
					desc = "Redirect Cmdline",
				},
				{
					"<leader>nl",
					function()
						require("noice").cmd("last")
					end,
					desc = "Noice Last Message",
				},
				{
					"<leader>nh",
					function()
						require("noice").cmd("history")
					end,
					desc = "Noice History",
				},
				{
					"<leader>na",
					function()
						require("noice").cmd("all")
					end,
					desc = "Noice All",
				},
				{
					"<leader>nd",
					function()
						require("noice").cmd("dismiss")
					end,
					desc = "Dismiss All",
				},
				{
					"<c-f>",
					function()
						if not require("noice.lsp").scroll(4) then
							return "<c-f>"
						end
					end,
					silent = true,
					expr = true,
					desc = "Scroll forward",
					mode = { "i", "n", "s" },
				},
				{
					"<c-b>",
					function()
						if not require("noice.lsp").scroll(-4) then
							return "<c-b>"
						end
					end,
					silent = true,
					expr = true,
					desc = "Scroll backward",
					mode = { "i", "n", "s" },
				},
			}
		end,
	},
}

return M
