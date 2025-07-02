local M = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      indent = {
        disable = { "c", "cpp" },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },
}

return M
