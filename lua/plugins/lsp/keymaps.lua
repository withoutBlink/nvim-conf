
local M = {
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
		desc = "Goto T[y]pe Definition",
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

return M
