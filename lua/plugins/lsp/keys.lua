--TODO: Simplify this keys definition process
local M = {}

---@type LazyKeysLspSpec[]|nil
M._keys = nil

---@alias LazyKeysLspSpec LazyKeysSpec|{has?:string}
---@alias LazyKeysLsp LazyKeys|{has?:string}

---@return LazyKeysLspSpec[]
function M.get()
	if M._keys then
		return M._keys
	end
    -- stylua: ignore
    M._keys =  {
      { "gd", function() require("telescope.builtin").lsp_definitions({ reuse_win = true }) end, desc = "Goto Definition", has = "definition" },
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "References" },
      { "gD", vim.lsp.buf.declaration, desc = "Goto Declaration" },
      { "gI", function() require("telescope.builtin").lsp_implementations({ reuse_win = true }) end, desc = "Goto Implementation" },
      { "gy", function() require("telescope.builtin").lsp_type_definitions({ reuse_win = true }) end, desc = "Goto T[y]pe Definition" },
      { "gK", vim.lsp.buf.signature_help, desc = "Signature Help", has = "signatureHelp" },
      { "K", vim.lsp.buf.hover, desc = "Hover" },
      { "<c-k>", vim.lsp.buf.signature_help, mode = "i", desc = "Signature Help", has = "signatureHelp" },
      { "<leader>r", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
    }
	return M._keys
end

---@param method string
function M.has(buffer, method)
	method = method:find("/") and method or "textDocument/" .. method
	local clients = require("lazyvim.util").lsp.get_clients({ bufnr = buffer })
	for _, client in ipairs(clients) do
		if client.supports_method(method) then
			return true
		end
	end
	return false
end

---@return (LazyKeys|{has?:string})[]
function M.resolve(buffer)
	local Keys = require("lazy.core.handler.keys")
	if not Keys.resolve then
		return {}
	end
	local spec = M.get()
	local opts = require("lazyvim.util").opts("nvim-lspconfig")
	local clients = require("lazyvim.util").lsp.get_clients({ bufnr = buffer })
	for _, client in ipairs(clients) do
		local maps = opts.servers[client.name] and opts.servers[client.name].keys or {}
		vim.list_extend(spec, maps)
	end
	return Keys.resolve(spec)
end

function M.on_attach(_, buffer)
	local Keys = require("lazy.core.handler.keys")
	local keymaps = M.resolve(buffer)

	for _, keys in pairs(keymaps) do
		if not keys.has or M.has(buffer, keys.has) then
			local opts = Keys.opts(keys)
			opts.has = nil
			opts.silent = opts.silent ~= false
			opts.buffer = buffer
			vim.keymap.set(keys.mode or "n", keys.lhs, keys.rhs, opts)
		end
	end
end

return M
