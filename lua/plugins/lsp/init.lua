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
		function ()
			require("telescope.builtin").lsp_references({ reuse_win = true })
		end,
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
		desc = "Goto T[y]pe Definition",
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
		depends = "nvim-telescope/telescope.nvim",
		init = function()
			--disable default keys here
			local default_keys = require("lazyvim.plugins.lsp.keymaps").get()
			default_keys[#default_keys + 1] = { "<leader>ca", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cA", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cl", mode = { "n", "v" }, false }
			default_keys[#default_keys + 1] = { "<leader>cr", mode = { "n", "v" }, false }
		end,
		keys = function()
			return lsp_keymaps
		end,
		opts = {
			setup = {
				clangd = function(_, opts)
					-- fix calngd offset encoding
					opts.capabilities.offsetEncoding = { "utf-16" }
					opts.keys[#opts.keys + 1] = { "<leader>cR", mode = { "n", "v" }, false }
				end,
			},
		},
	},
	{
		"williamboman/mason.nvim",
		depends = "neovim/nvim-lspconfig",
		keys = function()
			return {}
		end,
	},
}

return M
