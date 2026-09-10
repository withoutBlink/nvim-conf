local M = {
  {
    "stevearc/oil.nvim",
    opts = {
      default_file_explorer = true,
      columns = {
        "permissions", "size", "mtime"
      },
      win_options = {
        signcolumn = "no",
      },
    },
  }

}

return M
