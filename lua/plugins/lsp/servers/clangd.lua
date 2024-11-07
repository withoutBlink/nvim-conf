local lspconfig = require("lspconfig")

local M = {
	-- Use native clangd, not the one from mason
	-- which is not reliable, maybe consider to remove it
	mason = false;
	-- Use no default keys when load changd server
	keys = false;
	-- TODO: Emergently fix for clangd to find the project root when there is no compile_commands.json
	root_dir = function(fname)
		return lspconfig.util.root_pattern("compile_commands.json", ".git")(fname) or lspconfig.util.path.dirname(fname)
	end;
  filetypes = {"c", "cc", "cpp", "objc", "objcpp"};
}

return M
