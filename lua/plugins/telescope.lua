local util = require("lazyvim.util")
local builtin = require("telescope.builtin")

-- get current project folder during loading plugins
local project_pwd = util.root()

local telescope_keymaps = {
	{
		"<leader>s",
		function()
			builtin.grep_string({ cwd = project_pwd })
		end,
		desc = "Find Symbol Under Cursor(Project)",
		nowait = true,
	},
	{
		"<leader>f",
		function()
			builtin.find_files({ cwd = project_pwd })
		end,
		desc = "Find Files(Project)",
		nowait = true,
	},
	{
		"<leader>F",
		function()
			builtin.live_grep({ cwd = project_pwd })
		end,
		desc = "Find Symbol(Project)",
		nowait = true,
	},
	{
		"<leader>/",
		function()
			builtin.current_buffer_fuzzy_find()
		end,
		desc = "Find Symbol(Project)",
		nowait = true,
	},
	{
		"ss",
		function()
			require("telescope.builtin").grep_string({ cwd = vim.fn.expand("%:p:h") })
		end,
		desc = "Find Symbol Under Cursor(Current)",
		nowait = true,
	},
	{
		"sf",
		function()
			require("telescope.builtin").find_files({ cwd = vim.fn.expand("%:p:h") })
		end,
		desc = "Find Files(Current)",
		nowait = true,
	},
	{
		"sF",
		function()
			require("telescope.builtin").live_grep({ cwd = vim.fn.expand("%:p:h") })
		end,
		desc = "Find Symbols(Currnet)",
		nowait = true,
	},
	{
		"sps",
		function()
			require("telescope.builtin").grep_string({ cwd = require("lazy.core.config").options.root })
		end,
		desc = "Find Symbol Under Cursor(Plugins)",
	},
	{
		"spf",
		function()
			require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
		end,
		desc = "Find Files(Plugins)",
	},
	{
		"spF",
		function()
			require("telescope.builtin").live_grep({ cwd = require("lazy.core.config").options.root })
		end,
		desc = "Find Symbols(Plugins)",
	},
}

local telescope_opts = {
	defaults = {
		layout_strategy = "horizontal",
		layout_config = { prompt_position = "top" },
		sorting_strategy = "ascending",
		winblend = 0,
		mappings = {
			['n'] = {
				['<c-d>'] = function (prompt_bufnr)
					require("telescope.actions").preview_scrolling_down(prompt_bufnr)
				end,
				['<c-u>'] = function (prompt_bufnr)
					require("telescope.actions").preview_scrolling_up(prompt_bufnr)
				end
			},
			['i'] = {
				['<c-d>'] = function (prompt_bufnr)
					require("telescope.actions").preview_scrolling_down(prompt_bufnr)
				end,
				['<c-u>'] = function (prompt_bufnr)
					require("telescope.actions").preview_scrolling_up(prompt_bufnr)
				end
			},
		},
	},
}

local M = {
	{
		"nvim-telescope/telescope.nvim",
		opts = telescope_opts,
		keys = function()
			return telescope_keymaps
		end,
	},
}

return M
