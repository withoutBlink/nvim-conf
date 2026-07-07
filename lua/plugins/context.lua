local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main"
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    deps = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      enable = true,
      max_lines = 0,
    }
  }

}

return M
