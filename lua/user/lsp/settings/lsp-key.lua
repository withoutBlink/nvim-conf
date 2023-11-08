local M = {}

function FormatFunction()
	vim.lsp.buf.format({
		async = true,
		range = {
			["start"] = vim.api.nvim_buf_get_mark(0, "<"),
			["end"] = vim.api.nvim_buf_get_mark(0, ">"),
		}
	})
end

M.n= {
	gD = 'lua vim.lsp.buf.declaration()',
	gd = 'lua vim.lsp.buf.definition()',
	gt = 'lua vim.lsp.buf.type_definition()',
	gi = 'lua vim.lsp.buf.implementation()',
	gr = 'lua vim.lsp.buf.references()',
	gh = 'lua vim.cmd(":ClangdSwitchSourceHeader")',
	K = 'lua vim.lsp.buf.hover()',
	['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
	['<leader>d'] = 'lua vim.diagnostic.setloclist()',
	['[d'] = 'lua vim.diagnostic.goto_prev({ border = "rounded" })',
	[']d'] = 'lua vim.diagnostic.goto_next({ border = "rounded" })',
	-- F = 'lua FormatFunction()',
	-- ['<leader>rn'] = 'lua vim.lsp.buf.rename()',
	-- ['<leader>ca'] = 'lua vim.lsp.buf.code_action()',
}

M.v= {
	F = 'lua FormatFunction()'
}

return M
