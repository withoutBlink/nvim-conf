local M = {
  {
    "stevearc/conform.nvim",
    event = { "BufWinEnter" },
    keys = false,
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
        python = { "ruff_organize_imports", "ruff_format" }
      }
    }
  },
}

return M
