local M = {
  {
    "stevearc/conform.nvim",
    event = { "BufWinEnter" },
    keys = false,
    opts = {
      formatters_by_ft = {
        rust = {"rustfmt"}
      }
    }
  },
}

return M
