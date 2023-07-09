local lsp_setup_ok, lsp_setup = pcall(require, "toolset.lsp-conf")
if not lsp_setup_ok then
	return
end

local keymapping_ok, keymapping = pcall(require, "user.lsp.settings.lsp-key")
if not keymapping_ok then
	return
end

local on_attach_cb_ok, on_attach_cb = pcall(require, "user.lsp.settings.handlers")
if not on_attach_cb_ok then
	return
end

local capabilities
local org_capabilities = vim.lsp.protocol.make_client_capabilities()
local cmp_cap_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if cmp_cap_ok then
	capabilities = cmp_nvim_lsp.default_capabilities(org_capabilities)
else
	capabilities = org_capabilities
end

local lua_ls_opt_ok, lua_ls_opt = pcall(require, "user.lsp.settings.lua-ls")
if not lua_ls_opt_ok then
	return
end

lsp_setup.setup({
	default_mappings = false,
	mappings = keymapping,
	on_attach = on_attach_cb,
	capabilities = capabilities,
	servers = {
		lua_ls = lua_ls_opt,
		jdtls = {},
		clangd = {},
		asm_lsp = {},
		pyright = {},
		cmake = {},
		bashls = {},
	}
})
