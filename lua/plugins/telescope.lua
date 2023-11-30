local telescope_keymaps = {
  -- add a keymap to browse plugin files
  -- stylua: ignore
  {
    "<leader>f",
    "<cmd>Telescope find_files<CR>",
    desc = "Find Files",
    nowait = true,
  },
	-- TODO: limit search scope
	{
		"<leader>F",
		"<cmd>Telescope live_grep<CR>",
		desc = "Find Symbols",
		nowait = true,
	},
	{
		"<leader>pf",
		function()
			require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
		end,
		desc = "Find Plugin Files",
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
