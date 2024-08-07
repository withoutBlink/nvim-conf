local logo = [[
	██████╗ ███████╗███████╗███████╗██████╗ ████████╗███████╗██████╗ 
	██╔══██╗██╔════╝██╔════╝██╔════╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗
	██║  ██║█████╗  ███████╗█████╗  ██████╔╝   ██║   █████╗  ██║  ██║
	██║  ██║██╔══╝  ╚════██║██╔══╝  ██╔══██╗   ██║   ██╔══╝  ██║  ██║
	██████╔╝███████╗███████║███████╗██║  ██║   ██║   ███████╗██████╔╝
	╚═════╝ ╚══════╝╚══════╝╚══════╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═════╝ 
	███╗   ██╗██╗   ██╗██╗███╗   ███╗
	████╗  ██║██║   ██║██║████╗ ████║
	██╔██╗ ██║██║   ██║██║██╔████╔██║
	██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
	██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
	╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝
]]

logo = string.rep("\n", 8) .. logo .. "\n\n"

local M = {
	{
		"nvimdev/dashboard-nvim",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
		event = "VimEnter",
		opts = {
			theme = "hyper",
			config = {
				header = vim.split(logo, "\n"),
				shortcut = {
					{ desc = "[ withoutBlink]", group = "DashboardShortCut" },
				},
			},
		},
	},
}

return M
