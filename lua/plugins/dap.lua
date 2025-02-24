local M = {
	{
		"mfussenegger/nvim-dap",
		enabled = false,
	},
	{
		"nvim-neotest/nvim-nio",
		enabled = false,
	},
	{
		"jay-babu/mason-nvim-dap.nvim",
		enabled = false,
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
			"williamboman/mason.nvim",
		},
		opts = {
			handlers = {},
		},
	},
	{
		"rcarriga/nvim-dap-ui",
		enabled = false,
		event = "VeryLazy",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
		keys = {
			{
				mode = { "n" },
				"<leader>br",
				"<cmd>DapContinue<cr>",
				desc = "Start(Continue) Debugging",
			},
			{
				mode = { "n" },
				"<leader>bb",
				"<cmd>DapToggleBreakpoint<cr>",
				desc = "Toggle Breakpoint",
			},
			{
				mode = { "n" },
				"<leader>bn",
				"<cmd>DapStepOver<cr>",
				desc = "Step Over",
			},
			{
				mode = { "n" },
				"<leader>bs",
				"<cmd>DapStepInto<cr>",
				desc = "Step Into",
			},
			{
				mode = { "n" },
				"<leader>bo",
				"<cmd>DapStepOut<cr>",
				desc = "Step Out",
			},
			{
				mode = { "n" },
				"<leader>be",
				"<cmd>DapToggleRepl<cr>",
				desc = "Toggle DBG Command Line",
			},
			{
				mode = { "n" },
				"<leader>bd",
				"<cmd>DapDisconnect<cr>",
				desc = "Disconnect",
			},
			{
				mode = { "n" },
				"<leader>bt",
				"<cmd>DapTerminate<cr>",
				desc = "Terminate",
			},
		},
	},
}

return M
