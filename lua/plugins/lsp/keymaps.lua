local M = {
	{
		"gd",
    function()
      require("fzf-lua").lsp_definitions()
    end,
		desc = "Goto Definition",
	},
	{
		"gr",
		function()
			require("fzf-lua").lsp_references()
		end,
		desc = "References",
	},
	{
		"gD",
		function()
			require("fzf-lua").lsp_declarations()
		end,
		desc = "Goto Declaration",
	},
	{
		"gI",
		function()
			require("fzf-lua").lsp_implementations({ reuse_win = true })
		end,
		desc = "Goto Implementation",
	},
	{
		"gy",
		function()
			require("fzf-lua").lsp_type_definitions({ reuse_win = true })
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
	}
}

return M
