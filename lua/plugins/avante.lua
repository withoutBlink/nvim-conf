local M = {
  {
    "yetone/avante.nvim",
    enabled = false,
    event = "VeryLazy",
    version = false, -- always use false here
    opts = {
      provider = "gemini",
      gemini = {
        endpoint = "https://generativelanguage.googleapis.com/v1beta/models",
        model = "gemini-2.0-flash",
        timeout = 30000,
        temperature = 0,
        max_tokens = 8192,
        proxy = vim.env.AVANTE_PROXY, -- [protocol://]host[:port] Use this proxy
        --reasoning_effort = "medium", -- low|medium|high，for resonalble
      },
    },
    build = "make",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "stevearc/dressing.nvim",
      "nvim-lua/plenary.nvim",
      -- Only needed by this
      "MunifTanjim/nui.nvim",
      "MeanderingProgrammer/render-markdown.nvim",
    },
  },
  {
    "MunifTanjim/nui.nvim",
    enabled = false;
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    enabled = false,
    opts = {
      file_types = { "markdown", "Avante" },
    },
    ft = { "markdown", "Avante" },
  },
}

return M
