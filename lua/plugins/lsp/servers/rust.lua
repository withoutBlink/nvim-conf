local M = {
  settings = {

    checkOnSave = {
      command = "clippy",
    },
    inlayHints = {
      bindingModeHints = { enable = true },
      chainingHints = { enable = true },
      closingBraceHints = { enable = true },
      parameterHints = { enable = true },
      typeHints = { enable = true },
    },
  }
}

return M
