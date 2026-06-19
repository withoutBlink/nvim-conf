
local M = {
  -- Use native clangd, not the one from mason
  -- which is not reliable, maybe consider to remove it
  mason = false,
  cmd = {
    'clangd',
    '--clang-tidy',
    '--background-index',
    '--offset-encoding=utf-8',
    '--header-insertion=never'
  },
  root_markers = { '.clangd', 'compile_commands.json' },
}

return M
