--[[ local status_ok, handlers = pcall(require, "user.lsp.handlers")
if not status_ok then
	return
end ]]
--[[ handlers.setup() ]]
local capabilities
local org_capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_cap_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_cap_ok then
	capabilities = cmp_nvim_lsp.default_capabilities(org_capabilities)
else
	capabilities = org_capabilities
end


require("lsp-setup").setup({
	default_mappings = false,
	mappings = {
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
	},
	on_attach = function(client, bufnr)
		-- Support custom the on_attach function for global
		-- Formatting on save as default
		-- require("lsp-setup.utils").format_on_save(client)
	end,
	capabilities = capabilities,
	servers = {
		neodev = require("neodev").setup({
			library = {
				enabled = true, -- when not enabled, neodev will not change any settings to the LSP server
				-- these settings will be used for your Neovim config directory
				runtime = true, -- runtime path
				types = true, -- full signature, docs and completion of vim.api, vim.treesitter, vim.lsp and others
				plugins = true, -- installed opt or start plugins in packpath
				-- you can also specify the list of plugins to make available as a workspace library
				-- plugins = { "nvim-treesitter", "plenary.nvim", "telescope.nvim" },
			},
			setup_jsonls = true, -- configures jsonls to provide completion for project specific .luarc.json files
			-- for your Neovim config directory, the config.library settings will be used as is
			-- for plugin directories (root_dirs having a /lua directory), config.library.plugins will be disabled
			-- for any other directory, config.library.enabled will be set to false
			-- override = function(root_dir, options) end,
			-- With lspconfig, Neodev will automatically setup your lua-language-server
			-- If you disable this, then you have to set {before_init=require("neodev.lsp").before_init}
			-- in your lsp start options
			lspconfig = true,
			-- much faster, but needs a recent built of lua-language-server
			-- needs lua-language-server >= 3.6.0
			pathStrict = true,
		}),
		lua_ls = {
			settings = {
				Lua = {
					runtime = {
						-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
						version = 'LuaJIT',
					},
					diagnostics = {
						-- Get the language server to recognize the `vim` global
						globals = { 'vim', 'require', 'pcall' },
					},
					workspace = {
						-- Make the server aware of Neovim runtime files
						library = vim.api.nvim_get_runtime_file("", true),
					},
					-- Do not send telemetry data containing a randomized but unique identifier
					telemetry = {
						enable = false,
					},
				},
			},
		},
		jdtls = {},
		clangd = {},
		asm_lsp = {},
		pyright = {},
		cmake = {},
		bashls = {},
	}
})
