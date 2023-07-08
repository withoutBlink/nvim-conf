
local M = {
	gD = 'lua vim.lsp.buf.declaration()',
	gd = 'lua vim.lsp.buf.definition()',
	gt = 'lua vim.lsp.buf.type_definition()',
	gi = 'lua vim.lsp.buf.implementation()',
	gr = 'lua vim.lsp.buf.references()',
	K = 'lua vim.lsp.buf.hover()',
	F = 'lua vim.lsp.buf.format()',
	['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
	['<leader>d'] = 'lua vim.diagnostic.setloclist()',
	['[d'] = 'lua vim.diagnostic.goto_prev({ border = "rounded" })',
	[']d'] = 'lua vim.diagnostic.goto_next({ border = "rounded" })',
	['<leader>rn'] = 'lua vim.lsp.buf.rename()',
	-- ['<leader>ca'] = 'lua vim.lsp.buf.code_action()',
}

return M
