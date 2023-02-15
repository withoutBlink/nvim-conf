--[[ local status_ok, handlers = pcall(require, "user.lsp.handlers")
if not status_ok then
	return
end ]]
--[[ handlers.setup() ]]

require("lsp-setup").setup({
	default_mappings = false,
	mappings = {
		gD = 'lua vim.lsp.buf.declaration()',
		gd = 'lua vim.lsp.buf.definition()',
		gt = 'lua vim.lsp.buf.type_definition()',
		gi = 'lua vim.lsp.buf.implementation()',
		gr = 'lua vim.lsp.buf.references()',
		K = 'lua vim.lsp.buf.hover()',
		F = 'lua vim.lsp.buf.format({ async: true })',
		['<C-k>'] = 'lua vim.lsp.buf.signature_help()',
		['<leader>d'] = 'lua vim.diagnostic.setloclist()',
		['[d'] = 'lua vim.diagnostic.goto_prev({ border = "rounded" })',
		[']d'] = 'lua vim.diagnostic.goto_next({ border = "rounded" })',
		-- ['<leader>rn'] = 'lua vim.lsp.buf.rename()',
		-- ['<leader>ca'] = 'lua vim.lsp.buf.code_action()',
	},
	on_attach = function(client, bufnr)
		-- Support custom the on_attach function for global
		-- Formatting on save as default
		require('lsp-setup.utils').format_on_save(client)
	end,
	capabilities = vim.lsp.protocol.make_client_capabilities(),
	servers = {
		clangd = require("lsp-setup.clangd_extensions").setup({}),
		neodev = require("neodev").setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = {"vim"},
					},
				},
			},
		})
	}
})
