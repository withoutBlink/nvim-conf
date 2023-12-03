local util = require("lazyvim.util")
local builtin = require("telescope.builtin")

-- get current project folder during loading
local project_pwd = util.root()

local telescope_keymaps = {
	{
		"<leader>f",
		function ()
			builtin.find_files({ cwd = project_pwd })
		end,
		desc = "Find Files",
		nowait = true,
	},
	{
		"<leader>F",
		function ()
			builtin.live_grep({ cwd = project_pwd })
		end,
		desc = "Find Symbol",
		nowait = true,
	},
	{
		"<leader>S",
		function ()
			builtin.grep_string({ cwd = project_pwd })
		end,
		desc = "Symbol Under Cursor",
		nowait = true,
	},
	{
		"<leader>ss",
		function()
			require("telescope.builtin").grep_string({ cwd = vim.fn.expand("%:p:h") })
		end,
		desc = "Under Cursor(Current)",
		nowait = true,
	},
	{
		"<leader>sf",
		function()
			require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })
		end,
		desc = "Files(Current)",
		nowait = true,
	},
	{
		"<leader>sF",
		function()
			require("telescope.builtin").live_grep({ cwd = vim.fn.expand("%:p:h") })
		end,
		desc = "Symbols(Currnet)",
		nowait = true,
	},
	{
		"<leader>pf",
		function()
			require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
		end,
		desc = "Find",
	},
}

local M = {
	{
		"nvim-telescope/telescope.nvim",
		-- change some options
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "top" },
				sorting_strategy = "ascending",
				winblend = 0,
			},
		},
		keys = function()
			return telescope_keymaps
		end,
	},
}

return M
