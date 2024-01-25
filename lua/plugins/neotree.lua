local util = require("lazyvim.util")

-- get current project folder during loading
local project_pwd = util.root()

-- global keymaps for neo-tree
local neotree_keymaps = function()
	return {
		{
			"<leader>e",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.fn.expand("%:p:h") })
			end,
			desc = "Explorer(left)",
		},
		{
			"<leader>E",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = project_pwd, position = "current" })
			end,
			desc = "Explorer(full)",
		},
	}
end

local neotree_config = function()
	local nt = require("neo-tree")
	nt.setup({
		window = {
			mapping_options = {
				noremap = true,
			},
			-- keymaps for foucs on the neo-tree
			mappings = {
				["l"] = {
					command = "open",
				},
				["h"] = {
					command = "close_node",
				},
				["R"] = {
					command = "refresh",
				},
			},
		},
		filesystem = {
			follow_current_file = {
				enabled = true,
				leave_dirs_open = false,
			},
			group_empty_dirs = true,
		},
	})
end

local M = {
	{
		"neo-tree.nvim",
		keys = neotree_keymaps,
		config = neotree_config,
	},
}

return M
