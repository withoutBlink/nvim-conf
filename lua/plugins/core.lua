local M = {
	{
		"LazyVim/LazyVim",
		opts = {
			defaults = {
				autocmds = true, -- lazyvim.config.autocmds
				keymaps = false, -- lazyvim.config.keymaps
				-- lazyvim.config.options can't be configured here since that's loaded before lazyvim setup
				-- if you want to disable loading options, add `package.loaded["lazyvim.config.options"] = true` to the top of your init.lua
			},
		},
	},
}

return M
