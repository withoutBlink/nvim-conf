
local M = {
  -- Use native clangd, not the one from mason
  -- which is not reliable, maybe consider to remove it
  mason = false,
  filetypes = { "h", "hpp", "hxx", "c", "cc", "cpp", "cxx", "objc", "objcpp" },
  cmd = {
    'clangd',
    '--clang-tidy',
    '--background-index',
    '--offset-encoding=utf-8',
  },
  root_markers = { '.clangd', 'compile_commands.json' },
}

return M
