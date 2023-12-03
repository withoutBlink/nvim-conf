local lsp_keymaps = {
	{
		"gd",
		function()
			require("telescope.builtin").lsp_definitions({ reuse_win = true })
		end,
		desc = "Goto Definition",
	},
	{
		"gr",
		"<cmd>Telescope lsp_references<cr>",
		desc = "References",
	},
	{
		"gD",
		vim.lsp.buf.declaration,
		desc = "Goto Declaration",
	},
	{
		"gI",
		function()
			require("telescope.builtin").lsp_implementations({ reuse_win = true })
		end,
		desc = "Goto Implementation",
	},
	{
		"gy",
		function()
			require("telescope.builtin").lsp_type_definitions({ reuse_win = true })
		end,
		desc = "Goto T[y]pe Definition"
	},
	{
		"gK",
		vim.lsp.buf.signature_help,
		desc = "Signature Help",
	},
	{
		"gh",
		"<cmd>ClangdSwitchSourceHeader<cr>",
		desc = "Switch Header/Source",
	},
	{
		"K",
		vim.lsp.buf.hover,
		desc = "Hover",
	},
	{
		"<c-k>",
		vim.lsp.buf.signature_help,
		mode = "i",
		desc = "Signature Help",
	},
	{
		"<leader>r",
		vim.lsp.buf.rename,
		desc = "Rename",
	},
}

local M = {
	{
		"neovim/nvim-lspconfig",
		init = function ()
			--disable default keys here
			local default_keys = require("lazyvim.plugins.lsp.keymaps").get()
			default_keys[#default_keys+1] = { "<leader>ca", mode = {"n", "v"}, false }
			default_keys[#default_keys+1] = { "<leader>cA", mode = {"n", "v"}, false }
			default_keys[#default_keys+1] = { "<leader>cl", mode = {"n", "v"}, false }
			default_keys[#default_keys+1] = { "<leader>cr", mode = {"n", "v"}, false }
		end,
		keys = function()
			return lsp_keymaps
		end,
	},
	{
		"williamboman/mason.nvim",
		keys = function()
			return {}
		end,
	},
}

return M
