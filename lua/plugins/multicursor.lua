local M = {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
        'smoka7/hydra.nvim',
    },
    opts = {
		hint_config = false,
	},
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
		{
			mode = { 'v', 'n' },
			'<leader>m',
			'<cmd>MCstart<cr>',
			desc = 'Start Multi Cursor',
		},
	},
}

return M
