# TODO: remove close icon in the tab
local M = {
	{
		"akinsho/bufferline.nvim",
		enabled = false,
		keys = function()
			return {}
		end,
		opts = {
			options = {
				close_icon = '',
				buffer_close_icon = '',
				show_buffer_close_icons = false,
				show_close_icon = false,
			}
		}
	}
}

return M
