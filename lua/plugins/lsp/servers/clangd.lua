
local M = {
  -- Use native clangd, not the one from mason
  -- which is not reliable, maybe consider to remove it
  mason = false,
  filetypes = { "h", "hpp", "hxx", "c", "cc", "cpp", "cxx", "objc", "objcpp" },
}

return M
