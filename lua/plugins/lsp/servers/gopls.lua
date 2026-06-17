local M = {
  init_options = {
    semanticTokens = true, -- from gopls 0.22.0
  },
  settings = {
    gopls = {
      semanticTokens = true, -- deperacated
      hints = {
        assignVariableTypes = true,
        compositeLiteralFields = true,
        compositeLiteralTypes = true,
        constantValues = true,
        functionTypeParameters = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    }
  },
}

return M
