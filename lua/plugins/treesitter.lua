local M = {
	{
		"nvim-treesitter/nvim-treesitter",
    enabled = false,
		opts = {
			indent = {
				disable = { "c", "cpp" },
			},
		},
	},
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    enabled = false,
  },
}

return M
